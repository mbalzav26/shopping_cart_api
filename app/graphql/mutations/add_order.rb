module Mutations
    class AddOrder < Mutations::BaseMutation
      argument :params, Types::Input::OrderInputType, required: true
  
      field :order, Types::OrderType, null: false
  
      def resolve(params:)
        order_params = Hash params
  
        begin
          order = Order.create!(order_params)
  
          { order: order }
        rescue ActiveRecord::RecordInvalid => e
          GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
            " #{e.record.errors.full_messages.join(', ')}")
        end
      end
    end
  end
