module Types
    module Input
        class PaymentUpdateType < Types::BaseInputObject
            argument :id, ID
            argument :amount, Integer
            argument :order_id, String
        end
    end
end