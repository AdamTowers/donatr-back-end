class OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :funds

  has_many :funds
end
