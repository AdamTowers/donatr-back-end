class Donor < ApplicationRecord
  has_secure_password

  validates :username, uniqueness: { case_sensitive: false }, length: { in: 2..48 }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :password, length: { in: 8..48 }, on: :create

  has_many :donations
  has_many :funds, through: :donations
  has_many :organizations, through: :funds

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
