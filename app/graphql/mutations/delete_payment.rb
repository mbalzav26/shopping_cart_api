module Mutations
    class DeletePayment < Mutations::BaseMutation
        argument :id, ID, required: true
    
        field :payment, Types::PaymentType, null: false
    
        def resolve(id:)
          payment = Payment.find(id)
    
          if payment.destroy
            { payment: payment }
          else
            GraphQL::ExecutionError.new("Failed to delete payment")
          end
        rescue ActiveRecord::RecordNotFound => e
          GraphQL::ExecutionError.new("Payment not found: #{e.message}")
        end
    end
end