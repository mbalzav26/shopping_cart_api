module Queries
    class FetchPayments < Queries::BaseQuery
        type [Types::PaymentType], null: false
    
        def resolve
        Payment.all
        end
    end
end