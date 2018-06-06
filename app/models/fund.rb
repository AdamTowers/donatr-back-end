class Fund < ApplicationRecord
  validates :organization_id, presence: true
  validates :title, length: { in: 2..256 }
  validates :description, presence: true
  validates :goal, numericality: {only_integer: true, greater_than_or_equal_to: 1}

  belongs_to :organization
  has_many :donations
  has_many :donors, through: :donations
end
