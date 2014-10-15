module ShippingApi
  class CoreValidationException < BaseEnum
    NAMES = {
      10_000	=> 'InvalidApiKey',
      10_001	=> 'PickupFromAndToDateMismatch',
      10_002	=> 'PickupFromMustBeLesserThanTo',
      10_003	=> 'PickupNotPossibleOnDate',
      10_004	=> 'PickupInvalidInterval',
      10_005	=> 'DeliveryFromMustBeLesserThanTo',
      10_006	=> 'DeliveryInvalidInterval',
      10_007	=> 'ShipmentNotfound',
      10_008	=> 'ConsigneePostalCodeAndCityInvalidCombination',
      10_009	=> 'SenderPostalCodeAndCityInvalidCombination',
      10_010	=> 'NonFailedShipmentWithRef1AndPickupDateAlreadyExists',
      10_011	=> 'UnsupportedBillingUnit',
      10_012	=> 'CountOfBillingUnitsMustBeSet',
      10_013	=> 'ExpectedSenderAddressDoesntMatch',
      10_014	=> 'PickupInvalidPostalCode',
      10_015	=> 'DeliveryInvalidPostalCode',
      10_016	=> 'CutoffTimePassed',
      10_017	=> 'NoActiveLabelLayoutSetting',
      10_018	=> 'CannotUseOexPackaging',
      10_019	=> 'NoShipmentsForPickupFound',
      10_020	=> 'NoDataDefinedShipmentsFound',
      10_021	=> 'DeliveryInvalidExpressType',
      10_022	=> 'InvalidExWorksType',
      10_023	=> 'ExpressDeliveryNotAvailableForCargo',
      10_024	=> 'ColliesOrNumberOfColliesMustBeSent',
      10_025	=> 'ServiceNotAvailableForSenderPostalCode',
      10_026	=> 'ServiceNotAvailableForConsigneePostalCode',
      10_027	=> 'UnsupportedSenderCountryPrefix',
      10_028	=> 'UnsupportedConsigneeCountryPrefix',
      10_029	=> 'BothSenderAndConsigneeCannotContainInternationalCountryPrefixes',
      10_030	=> 'UnsupportedFormatOfShipmentDocument',
      10_031	=> 'UnsupportedFormatOfColliDocument',
      10_032	=> 'NoPostalLocationsFound',
      10_033	=> 'CannotUpdateShipment',
      10_034	=> 'PickupNotYetRequestedForShipment',
      10_035	=> 'PickupNotYetRequestedForColli',
      10_500	=> 'InvalidExpressType',
      11_000	=> 'ApiKeyNotAuthorizedToRequestEuroplate',
      11_001	=> 'ShipmentNotValidForEuroplatePrinting',
      11_002	=> 'InvalidShipmentStatusForEuroplatePrinting',
      11_003	=> 'ColliWeightIsGreaterThanMaxAllowedColliWeight',
      11_004	=> 'InsufficientConsigneeData',
      11_005	=> 'ColliWeightIsZero',
      15_000	=> 'ApiKeyNotAuthorizedToAdministrateApiKeys',
      15_001	=> 'PostalCodeAndCityInvalidCombination',
      15_002	=> 'InvalidLogoImageData',
      15_003	=> 'ApiKeyNotFound',
      15_004	=> 'CannotRemoveAdministrationPrivileges',
      20_000	=> 'UnknownError',
      20_001	=> 'ApiKeyFailedToSerialize',
      20_002	=> 'SystemMaintenance'
    }
  end
end