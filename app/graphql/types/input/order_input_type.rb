module Types
    module Input
      class OrderInputType < Types::BaseInputObject
        argument :state, String, required: true
      end
    end
end