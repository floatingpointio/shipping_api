require 'immutable_struct'
require 'faraday'

module ShippingApi
  # Represents the Client
  class Client
    Configuration = ImmutableStruct.new(:api_url, :api_key)

    attr_reader :config, :conn

    def initialize(api_url, api_key)
      @config = Configuration.new(api_url, api_key)
      @conn = create_conn
    end

    private

    def create_conn
      Faraday.new(@config.api_url) do |faraday|
        faraday.params = {
          ApiKey: @config.api_key
        }
      end
    end

  end
end
