module Types
    module Input
        class ShoppingCartInputType < Types::BaseInputObject
            argument :total, Integer, required: true
            argument :active, Boolean, required: true
            argument :user_id, String, required: true
        end
    end
end