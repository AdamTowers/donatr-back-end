class OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :email, :bio, :funds

  has_many :funds
end
