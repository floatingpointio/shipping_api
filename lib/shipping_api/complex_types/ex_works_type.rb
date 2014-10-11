module ShippingApi
  class ExWorksType < ComplexType
    NAMES = {
      4	=> 'ExWorks',
      44 => 'CashPrepaid'
    }
    DESCRIPTIONS = {
      4	=> 'Consignee pays for the shipping',
      44 => 'Shipping fee is prepaid'
    }
  end
end
