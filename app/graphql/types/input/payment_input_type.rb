module Types
    module Input
      class PaymentInputType < Types::BaseInputObject
        argument :amount, Integer, required: true
        argument :order_id, String, required: true
      end
    end
end