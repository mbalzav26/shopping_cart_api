class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders, id: :uuid do |t|
      t.string :state
      t.string :user_id

      t.timestamps
    end
  end
end
