class Payment < ApplicationRecord
  acts_as_paranoid
  belongs_to :order
end
