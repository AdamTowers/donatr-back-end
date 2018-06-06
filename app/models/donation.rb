class Donation < ApplicationRecord
  validates :donor_id, presence: true
  validates :fund_id, presence: true
  validates :amount, numericality: {only_integer: true, greater_than_or_equal_to: 1}

  belongs_to :fund
  belongs_to :donor
end
