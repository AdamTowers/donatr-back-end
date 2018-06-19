class Fund < ApplicationRecord
  validates :organization_id, presence: true
  validates :title, length: { in: 2..256 }
  validates :description, presence: true
  validates :goal, numericality: { greater_than: 0, less_than: 1000000 }

  belongs_to :organization
  has_many :donations
  has_many :donors, through: :donations

  def raised
    total = 0
    self.donations.each do |d|
      total += d.amount
    end

    return total
  end
end
