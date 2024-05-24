module Types
    module Input
        class ShoppingCartUpdateType < Types::BaseInputObject
            argument :id, ID
            argument :total, Integer, required: true
            argument :active, Boolean, required: true
            argument :user_id, String, required: true
        end
    end
end