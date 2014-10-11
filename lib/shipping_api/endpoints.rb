module ShippingApi
  module Endpoints

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


  end
end
