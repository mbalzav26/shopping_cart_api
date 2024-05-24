module Queries
    class FetchShoppingCarts < Queries::BaseQuery
        type [Types::ShoppingCartType], null: false
    
        def resolve
            ShoppingCart.all
        end
    end
end