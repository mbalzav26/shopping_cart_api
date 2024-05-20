module Mutations
    class UpdateOrder < Mutations::BaseMutation
        argument :params, Types::Input::OrderUpdateType, required: true
    
        field :order, Types::OrderType, null: false
    
        def resolve(params:)
          order_params = params.to_h
          order = Order.find(order_params[:id])
    
          if order.update(order_params.except(:id))
            { order: order }
          else
            GraphQL::ExecutionError.new("Invalid attributes for #{order.class}: #{order.errors.full_messages.join(', ')}")
          end
        rescue ActiveRecord::RecordNotFound => e
          GraphQL::ExecutionError.new("Order not found: #{e.message}")
        end
      end
end