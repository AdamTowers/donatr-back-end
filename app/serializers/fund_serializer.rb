class FundSerializer < ActiveModel::Serializer
  attributes :id, :title, :goal, :raised, :organization, :donations

  belongs_to :organization
  has_many :donations
end
