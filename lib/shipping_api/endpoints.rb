module ShippingApi
  module Endpoints

    def get_shipment_status_by_shipment_id(id)
      _get 'GetShipmentStatusByShipmentId', ShipmentId: id
    end

    def get_shipment_status_by_ref1_and_pickup_date(ref1, pickup_date)
      _get 'GetShipmentStatusByRef1AndPickupDate', Ref1: ref1, PickupDate: pickup_date
    end

    def get_shipment_status_by_any_ref(ref_type, search_parameter)
      _get 'GetShipmentStatusByAnyRef', RefType: ref_type, SearchParameter: search_parameter
    end

    def create_shipment_plain(params)
      _post 'CreateShipmentPlain', params
    end

    def update_shipment_plain(params)
      _post 'UpdateShipmentPlain', params
    end

    def create_shipment(params)
      _post 'CreateShipment', params
    end

    def update_shipment(params)
      _post 'UpdateShipment', params
    end

    def cancel_shipment(shipment_id)
      _post 'CancelShipment', ShipmentId: shipment_id
    end

    def get_shipping_labels_for_single_shipment(shipment_id)
      _post 'GetShippingLabelsForSingleShipment', ShipmentId: shipment_id
    end

    def get_shipping_labels_for_all_shipments
      _post 'GetShippingLabelsForAllShipments'
    end

    def get_shipping_labels_for_shipments(shipment_ids)
      _get 'GetShippingLabelsForShipments', ShipmentIds: shipment_ids
    end

    def request_pickup
      _post 'RequestPickup'
    end

    def request_pickup_for_shipments(shipment_ids)
      _post 'RequestPickupForShipments', ShipmentIds: shipment_ids
    end

    def get_pickup_list_contaning_colli(colli_id)
      _get 'GetPickupListContainingColli', ColliId: colli_id
    end

    def get_possible_date_times_for_shipments(params)
      _get 'GetPossibleDateTimesForShipments', params
    end

    def get_locations(name_or_postal)
      _get 'GetLocations', PostalCodeOrName: name_or_postal
    end

    def get_all_pickup_and_delivery_intervals
      _get 'GetAllPickupAndDeliveryIntervals'
    end

    def get_price_information(params)
      _get 'GetPriceInformation', params
    end

    def get_active_shipments
      _get 'GetActiveShipments'
    end

    # missing: CreateApiKey, UpdateApiKey
  end
end
