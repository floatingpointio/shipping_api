require 'immutable_struct'

module ShippingApi
  # Represents the Client
  class Client
    Configuration = ImmutableStruct.new(:api_url, :api_key)

    def initialize(api_url, api_key)
      @config = Configuration.new(api_url, api_key)
    end
    attr_reader :config
  end
end
