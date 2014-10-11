module ShippingApi
  class ColliStatus < ComplexType
    NAMES = {
      1	=> 'NoPrinting',
      2	=> 'AwaitingPrint',
      3	=> 'Printed',
      4	=> 'MarkedForNoPrint'
    }

    def description
      ''
    end
  end
end
