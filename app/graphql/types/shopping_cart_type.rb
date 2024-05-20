# frozen_string_literal: true

module Types
  class ShoppingCartType < Types::BaseObject
    field :id, ID, null: false
    field :total, Integer
    field :active, Boolean
    field :user_id, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
