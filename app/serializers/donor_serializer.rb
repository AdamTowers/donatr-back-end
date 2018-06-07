class DonorSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name

  # To show all donations, uncomment the code below
  # has_many :donations
end
