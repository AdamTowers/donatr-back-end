class Organization < ApplicationRecord
  validates :username, uniqueness: { case_sensitive: false }, length: { in: 2..48 }
  validates :name, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :bio, length: { in: 0..400 }, on: :create
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create
  validates :password, length: { in: 8..12 }, on: :create

  has_many :funds
  has_many :donations, through: :funds
  has_many :donors, through: :funds

  has_secure_password
end
