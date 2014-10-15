require 'immutable_struct'
require 'faraday'

module ShippingApi

  class Client
    include Endpoints

    Configuration = ImmutableStruct.new(:api_url, :api_key)

    attr_reader :config, :conn

    def initialize(api_url, api_key)
      @config = Configuration.new(api_url, api_key)
      @conn = create_conn
    end

    private

    def create_conn
      Faraday.new @config.api_url
    end

    def _get(endpoint, params={})
      params = {ApiKey: @config.api_key}.merge params

      handle_response @conn.get endpoint, params
    end

    def _post(endpoint, params={})
      params = {ApiKey: @config.api_key}.merge params

      response = @conn.post do |req|
        req.url endpoint
        req.headers['Content-Type'] = 'application/json'
        req.body = params.to_json
      end

      handle_response response
    end

    def handle_response(raw_response)
      response = Response.new raw_response

      response.valid? ? response.data : response.errors
    end

  end
end
