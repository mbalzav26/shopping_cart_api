class Order < ApplicationRecord
    acts_as_paranoid 
    has_one :payment
end
