# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# create order
order1 = Order.create!(state: "pending", user_id: "dsjdbsjbi433ds")
order2 = Order.create!(state: "pending", user_id: "cbbjkcbkbdkdssd")
order3 = Order.create!(state: "pending", user_id: "dsjdbsjbi433ds")
order4 = Order.create!(state: "pending", user_id: "cbbjkcbkbdkdssd")
order5 = Order.create!(state: "pending", user_id: "bjksdbksddssdbs")
order6 = Order.create!(state: "pending", user_id: "dkhsdvksdvsdh")

# create payment
payment1 = Payment.create!(amount: 1000, order_id: order1.id)
payment2 = Payment.create!(amount: 2000, order_id: order2.id)
payment3 = Payment.create!(amount: 3000, order_id: order3.id)
payment4 = Payment.create!(amount: 4000, order_id: order4.id)
payment5 = Payment.create!(amount: 5000, order_id: order5.id)
payment6 = Payment.create!(amount: 6000, order_id: order6.id)

# create shopping_cart
shopping_cart1 = ShoppingCart.create!(total: 1000, active: true, user_id: "dsjdbsjbi433ds", product_id: "dsjdbjksdbkjsd")
shopping_cart2 = ShoppingCart.create!(total: 2000, active: true, user_id: "cbbjkcbkbdkdssd", product_id: "dsjdbjksdbkjsd")
