# frozen_string_literal: true

module Types
  class PaymentType < Types::BaseObject
    field :id, ID, null: false
    field :amount, Integer
    field :order_id, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :order, Types::OrderType, null: false

    def order
      object.order
    end
  end
end
