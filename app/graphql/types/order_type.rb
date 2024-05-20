# frozen_string_literal: true

module Types
  class OrderType < Types::BaseObject
    field :id, ID, null: false
    field :state, String
    field :user_id, String
    #field :payment_id, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :payment, [Types::PaymentType], null: false

    #def payments
    #  object.payments
    #end
  end
end
