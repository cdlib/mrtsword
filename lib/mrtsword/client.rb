require 'sword2ruby'

module Mrtsword
  class Client

    def initialize(username:, password:, on_behalf_of: nil)
      @username = username
      @password = password
      @on_behalf_of = on_behalf_of
    end

    def sword_user
      @sword_user ||= Sword2Ruby::User.new(username, password, on_behalf_of)
    end

    def connection
      @connection ||= Sword2Ruby::Connection.new(sword_user)
    end



  end
end
