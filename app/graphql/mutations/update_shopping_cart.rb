module Mutations
    class UpdateShoppingCart < Mutations::BaseMutation
        argument :params, Types::Input::ShoppingCartUpdateType, required: true
    
        field :shopping_cart, Types::ShoppingCartType, null: false
    
        def resolve(params:)
          shopping_cart_params = params.to_h
          shopping_cart = ShoppingCart.find(shopping_cart_params[:id])
    
          if shopping_cart.update(shopping_cart_params.except(:id))
            { shopping_cart: shopping_cart }
          else
            GraphQL::ExecutionError.new("Invalid attributes for #{shopping_cart.class}: #{shopping_cart.errors.full_messages.join(', ')}")
          end
        rescue ActiveRecord::RecordNotFound => e
          GraphQL::ExecutionError.new("Shopping Cart empty: #{e.message}")
        end
      end
end