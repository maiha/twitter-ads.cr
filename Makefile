SHELL=/bin/bash
.SHELLFLAGS = -o pipefail -c

COMPILE_FLAGS=-Dstatic

######################################################################
### testing

.PHONY: ci
ci: check_version_mismatch test

.PHONY: test
test: spec

.PHONY: spec
spec:
	crystal spec $(COMPILE_FLAGS) -v --fail-fast

.PHONY: check_version_mismatch
check_version_mismatch: README.md shard.yml
	diff -w -c <(grep version: $<) <(grep ^version: shard.yml)

SAMPLES := $(sort $(basename $(notdir $(wildcard samples/api/*.cr))))
SAMPLES_DIRS := $(patsubst %,samples/ci/%,$(SAMPLES))
.PHONY: samples/ci
samples/ci: $(SAMPLES_DIRS)
	make samples/ci-result

samples/ci/%: samples/api/%.cr
	mkdir -p  "$@"
	touch "$@/ng"
	@crystal "$<" > "$@/log" 2> "$@/err" && rm "$@/ng"
	[ -s "$@/err" ] || rm "$@/err"

# ANSI color
RED=\033[31m
GREEN=\033[32m
RESET=\033[0m

samples/ci-result:
	@for x in $(SAMPLES_DIRS); do \
	  if [ ! -d "$$x" ]; then \
	    echo -e "   `basename $$x` # Not tested yet"; \
	  elif [ -f "$$x/ng" ]; then \
	    echo -e "$(RED)NG `basename $$x`$(RESET) # `head -1 $$x/err`"; \
	  else \
	    echo -e "$(GREEN)OK `basename $$x`$(RESET)"; \
	  fi \
	done

######################################################################
### generating

# pb json2schema  json/twitter_ads/stats/params.json > proto/stats/params.proto

.PHONY : proto
proto:
	mkdir -p src/twitter-ads/proto
	PROTOBUF_NS=TwitterAds::Proto protoc -I proto --crystal_out src/twitter-ads/proto proto/*.proto

proto-stats:
	mkdir -p src/twitter-ads/proto/stats
	PROTOBUF_NS=TwitterAds::Proto::Stats protoc -I proto --crystal_out src/twitter-ads/proto/stats proto/stats/*.proto
	@make proto-hotfix

# pb schema2model proto/stats/metrics.proto TwitterAds:: >| src/twitter-ads/models/stats/metrics.cr
# pb schema2model proto/stats/params.proto  TwitterAds:: >| src/twitter-ads/models/stats/params.cr
# pb schema2model proto/stats/account.proto TwitterAds:: >| src/twitter-ads/models/stats/account.cr

.PHONY: proto-hotfix
proto-hotfix:
	make -s proto-hotfix/stats_account_metrics

proto-hotfix/%: src/twitter-ads/models/%.cr
	sed -i 's/Array(Int64) /Array(Int64)? /' $<

######################################################################
### versioning

VERSION=
CURRENT_VERSION=$(shell git tag -l | sort -V | tail -1 | sed -e 's/^v//')
GUESSED_VERSION=$(shell git tag -l | sort -V | tail -1 | sed -e 's/^v//' | awk 'BEGIN { FS="." } { $$3++; } { printf "%d.%d.%d", $$1, $$2, $$3 }')

.PHONY : version
version:
	@if [ "$(VERSION)" = "" ]; then \
	  echo "ERROR: specify VERSION as bellow. (current: $(CURRENT_VERSION))";\
	  echo "  make version VERSION=$(GUESSED_VERSION)";\
	else \
	  sed -i -e 's/^version: .*/version: $(VERSION)/' shard.yml ;\
	  sed -i -e 's/^    version: [0-9]\+\.[0-9]\+\.[0-9]\+/    version: $(VERSION)/' README.md ;\
	  echo git commit -a -m "'$(COMMIT_MESSAGE)'" ;\
	  git commit -a -m 'version: $(VERSION)' ;\
	  git tag "v$(VERSION)" ;\
	fi

.PHONY : bump
bump:
	make version VERSION=$(GUESSED_VERSION) -s

# for x in $(cat x); (/tmp/twitter pb schema2model proto/$x.proto TwitterAds:: >| src/twitter-ads/models/$x.cr)
