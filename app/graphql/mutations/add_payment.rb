module Mutations
    class AddPayment < Mutations::BaseMutation
      argument :params, Types::Input::PaymentInputType, required: true
  
      field :payment, Types::PaymentType, null: false
  
      def resolve(params:)
        payment_params = Hash params
  
        begin
          payment = Payment.create!(payment_params)
  
          { payment: payment }
        rescue ActiveRecord::RecordInvalid => e
          GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
            " #{e.record.errors.full_messages.join(', ')}")
        end
      end
    end
  end