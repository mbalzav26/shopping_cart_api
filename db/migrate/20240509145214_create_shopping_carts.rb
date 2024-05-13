class CreateShoppingCarts < ActiveRecord::Migration[7.1]
  def change
    create_table :shopping_carts, id: :uuid do |t|
      t.integer :total, default: 0
      t.boolean :active, default: false
      t.string :user_id
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :shopping_carts, :deleted_at
  end
end
