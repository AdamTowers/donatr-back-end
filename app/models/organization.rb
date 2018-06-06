class Organization < ApplicationRecord
  validates :username, uniqueness: { case_sensitive: false }, length: { in: 2..20 }
  validates_format_of :username, with: /\A[a-zA-Z0-9]+\Z/
  validates :name, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create
  validates :password, length: { in: 8..12 }, on: :create

  has_many :funds
  has_many :donations, through: :funds
  has_many :donors, through: :funds

  has_secure_password
end
