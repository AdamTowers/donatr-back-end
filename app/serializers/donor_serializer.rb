class DonorSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :email, :donations

  has_many :donations
end
