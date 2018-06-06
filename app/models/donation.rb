class Donation < ApplicationRecord
  validates :amount, numericality: {only_integer: true, greater_than_or_equal_to: 1}

  belongs_to :fund
  belongs_to :donor
end
