module Types
    module Input
      class OrderInputType < Types::BaseInputObject
        argument :state, String, required: true
        argument :user_id, String, required: true
        #argument :payment_id, String, required: true
      end
    end
end