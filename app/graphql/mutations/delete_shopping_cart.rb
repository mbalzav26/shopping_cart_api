module Mutations
    class DeleteShoppingCart < Mutations::BaseMutation
      argument :id, ID, required: true
  
      field :shoppingCart, Types::ShoppingCartType, null: false
  
      def resolve(id:)
        # Buscar el carrito de compras usando el modelo ShoppingCart
        shopping_cart = ShoppingCart.find(id)
  
        if shopping_cart.destroy
          { shoppingCart: shopping_cart }
        else
          raise GraphQL::ExecutionError.new("Failed to delete shopping cart")
        end
      rescue ActiveRecord::RecordNotFound => e
        raise GraphQL::ExecutionError.new("Shopping cart not found: #{e.message}")
      end
    end
  end
  