module Mutations
    class UpdatePayment < Mutations::BaseMutation
        argument :params, Types::Input::PaymentUpdateType, required: true
    
        field :payment, Types::PaymentType, null: false
    
        def resolve(params:)
          payment_params = params.to_h
          payment = Payment.find(payment_params[:id])
    
          if payment.update(payment_params.except(:id))
            { payment: payment }
          else
            GraphQL::ExecutionError.new("Invalid attributes for #{payment.class}: #{payment.errors.full_messages.join(', ')}")
          end
        rescue ActiveRecord::RecordNotFound => e
          GraphQL::ExecutionError.new("Payment not found: #{e.message}")
        end
      end 
end