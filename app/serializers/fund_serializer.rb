class FundSerializer < ActiveModel::Serializer
  attributes :id, :organization_id, :title, :goal, :raised, :donation_count, :organization_name,

  def organization_name
    object.organization.name
  end

  def donation_count
    object.donations.count
  end
end
