module Mutations
    class AddShoppingCart < Mutations::BaseMutation
      argument :params, Types::Input::ShoppingCartInputType, required: true
  
      field :shopping_cart, Types::ShoppingCartType, null: false
  
      def resolve(params:)
        shopping_cart_params = Hash params
  
        begin
          shopping_cart = ShoppingCart.create!(shopping_cart_params)
  
          { shopping_cart: shopping_cart }
        rescue ActiveRecord::RecordInvalid => e
          GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
            " #{e.record.errors.full_messages.join(', ')}")
        end
      end
    end
  end
