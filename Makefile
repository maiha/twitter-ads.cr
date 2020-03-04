SHELL=/bin/bash

######################################################################
### compiling

# for mounting permissions in docker-compose
export UID = $(shell id -u)
export GID = $(shell id -g)

COMPILE_FLAGS=-Dstatic
BUILD_TARGET=

ON_DOCKER=docker-compose run --rm crystal

######################################################################
### testing

.PHONY: ci
ci: check_version_mismatch test

.PHONY: test
test: spec

.PHONY: spec
spec:
	@$(ON_DOCKER) crystal spec $(COMPILE_FLAGS) -v --fail-fast

.PHONY: check_version_mismatch
check_version_mismatch: README.md shard.yml
	diff -w -c <(grep version: $<) <(grep ^version: shard.yml)

######################################################################
### generating

.PHONY : proto
proto:
	mkdir -p src/twitter-ads/proto
	PROTOBUF_NS=TwitterAds::Proto protoc -I proto --crystal_out src/twitter-ads/proto proto/*.proto

######################################################################
### versioning

VERSION=
CURRENT_VERSION=$(shell git tag -l | sort -V | tail -1)
GUESSED_VERSION=$(shell git tag -l | sort -V | tail -1 | awk 'BEGIN { FS="." } { $$3++; } { printf "%d.%d.%d", $$1, $$2, $$3 }')

.SHELLFLAGS = -o pipefail -c

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
