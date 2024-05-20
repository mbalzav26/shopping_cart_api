# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "mensaje desde ruby on rails"
    end
    field :add_order, mutation: Mutations::AddOrder
    field :add_payment, mutation: Mutations::AddPayment
    field :update_order, mutation: Mutations::UpdateOrder
    field :update_payment, mutation: Mutations::UpdatePayment
    field :delete_order, mutation: Mutations::DeleteOrder
    field :delete_payment, mutation: Mutations::DeletePayment
  end
end
