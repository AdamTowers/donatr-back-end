class Fund < ApplicationRecord
  validates :organization_id, presence: true
  validates :title, length: { in: 3..48 }
  validates_format_of :title, with: /\A[a-zA-Z0-9]+\Z/
  validates :description, presence: true
  validates :goal, numericality: {only_integer: true, greater_than_or_equal_to: 1}

  belongs_to :organization
  has_many :donations
  has_many :donors, through: :donations
end
