module Types
    module Input
      class OrderInputType < Types::BaseInputObject
        argument :id, ID, required: false
        argument :state, String, required: true
        argument :user_id, String, required: true
      end
    end
end