class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders, id: :uuid do |t|
      t.string :state
      t.string :user_id
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :orders, :deleted_at
  end
end
