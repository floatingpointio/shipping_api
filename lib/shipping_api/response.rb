require 'json'

module ShippingApi
  class Response

    attr_reader :data, :raw

    def initialize(response)
      @raw  = response
      @data = JSON.parse response.body
    end

    def valid?
      @data['IsValid']
    end

    def model_errors
      @data['ModelErrors']
    end

    def validation_errors
      @data['ValidationErrors']
    end

  end
end
