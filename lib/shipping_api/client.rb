require 'immutable_struct'
require 'faraday'

require 'response'

module ShippingApi

  # Represents the Client
  class Client
    Configuration = ImmutableStruct.new(:api_url, :api_key)

    attr_reader :config, :conn

    def initialize(api_url, api_key)
      @config = Configuration.new(api_url, api_key)
      @conn = create_conn
    end

    ### Endpoints ... testing only for now

    # def get_shipment_status_by_shipment_id(id)
    #   @conn.get 'GetShipmentStatusByShipmentId', ShipmentId: id
    # end

    # def get_shipment_status_by_ref1_and_pickup_date(ref1, pickup_date)
    #   @conn.get 'GetShipmentStatusByRef1AndPickupDate', Ref1: ref1, PickupDate: pickup_date
    # end

    # def get_shipment_status_by_any_ref(ref_type, search_parameter)
    #   @conn.get 'GetShipmentStatusByAnyRef', RefType: ref_type, SearchParameter: search_parameter
    # end

    # ...

    def get_locations(name_or_postal)
      res = @conn.get 'GetLocations', PostalCodeOrName: name_or_postal
      Response.new res
    end

    # ...

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
