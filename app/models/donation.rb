class Donation < ApplicationRecord
  validates :amount, presence: true, numericality: { greater_than: 0, less_than: 1000000 }

  belongs_to :fund
  belongs_to :donor
end
