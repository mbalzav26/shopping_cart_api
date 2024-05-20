module Types
    module Input
        class OrderUpdateType < Types::BaseInputObject
            argument :id, ID
            argument :state, String
            argument :user_id, String
        end
    end
end