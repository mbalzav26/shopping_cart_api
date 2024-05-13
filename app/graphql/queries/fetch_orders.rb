module Queries
    class FetchOrders < Queries::BaseQuery
        type [Types::OrderType], null: false

        def resolve
            Order.all.order(created_at: :desc)
        end
    end
end