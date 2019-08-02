require "../account"

module TwitterAds::Api::Accounts
  def accounts : Array(Account)
    accounts_response.accounts
  end

  def accounts_response : Response
    body = get("/5/accounts.json")
    Response.from_json(body)
  end
  
  class Response
    JSON.mapping({
      next_cursor: String?,
      data: Array(Account),
    })

    def accounts : Array(Account)
      data
    end
  end
end
