require 'json'
require 'andand'
require 'shipping_api/enums/core_validation_exception'

module ShippingApi
  class Response

    EXCLUDED_ATTRS = %w(IsValid ModelErrors ValidationErrors)

    attr_reader :body, :raw, :errors

    def initialize(response)
      @raw  = response
      @body = JSON.parse response.body
      @errors = {
        validation: validation_errors,
        model: model_errors
      }
    end

    def valid?
      @body['IsValid']
    end

    def data
      cloned = @body.clone
      EXCLUDED_ATTRS.each {|attr| cloned.delete attr}
      cloned
    end

    private

    def model_errors
      @body['ModelErrors'].andand.map do |key, value|
        {
          field: key,
          msg: value
        }
      end
    end

    def validation_errors
      @body['ValidationErrors'].andand.map do |code|
        {
          code: code,
          msg: CoreValidationException.new(code).name,
        }
      end
    end

  end
end
