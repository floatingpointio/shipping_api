require 'immutable_struct'

module ShippingApi
  # Represents the Client
  class Client
    Configuration = ImmutableStruct.new(:api_key)

    def initialize(api_key)
      @config = Configuration.new(api_key)
    end
    attr_reader :config
  end
end
