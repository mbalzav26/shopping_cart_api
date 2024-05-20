module Mutations
    class DeleteOrder < Mutations::BaseMutation
        argument :id, ID, required: true
    
        field :order, Types::OrderType, null: false
    
        def resolve(id:)
          order = Order.find(id)
    
          if order.destroy
            { order: order }
          else
            GraphQL::ExecutionError.new("Failed to delete order")
          end
        rescue ActiveRecord::RecordNotFound => e
          GraphQL::ExecutionError.new("Order not found: #{e.message}")
        end
    end
end