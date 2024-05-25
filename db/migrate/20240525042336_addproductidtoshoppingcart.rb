class Addproductidtoshoppingcart < ActiveRecord::Migration[7.1]
  def change
    add_column :shopping_carts, :product_id, :string 
  end
end
