class CreatePayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments, id: :uuid do |t|
      t.integer :amount
      t.references :order, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
