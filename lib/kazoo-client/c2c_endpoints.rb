module Kazoo
  class Client
    def create_c2c_endpoint(account_id, data)
      post_request("accounts/#{account_id}/clicktocall", data)
    end

    def change_c2c_endpoint(account_id, endpoint_id, data)
      post_request("accounts/#{account_id}/clicktocall/#{endpoint_id}", data)
    end

    def execute_c2c_endpoint(account_id, endpoint_id, phone_number)
      get_request("accounts/#{account_id}/clicktocall/#{endpoint_id}/connect?contact=#{phone_number}")
    end

    def get_c2c_endpoints(account_id)
      get_request("accounts/#{account_id}/clicktocall")
    end

    def delete_c2c_endpoint(account_id, endpoint_id)
      delete_request("accounts/#{account_id}/clicktocall/#{endpoint_id}")
    end

    def get_c2c_endpoint_history(account_id, endpoint_id)
      get_request("accounts/#{account_id}/clicktocall/#{endpoint_id}/history")
    end
  end
end
