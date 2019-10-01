module Kazoo
  class Client

    def get_cdr_by_user(user_id)
      get_request("/users/#{user_id}/cdrs")
    end

  end
end
