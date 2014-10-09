require 'immutable_struct'

module ShippingApi
  # Represents the Client
  class Client
    Configuration = ImmutableStruct.new(:api_key)

    def initialize(opts)
      @config = Configuration.new(*opts)
    end
    attr_reader :config
  end
end
