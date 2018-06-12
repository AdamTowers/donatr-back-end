class FundSerializer < ActiveModel::Serializer
  attributes :id, :organization_id, :title, :goal, :raised, :donation_count

  def donation_count
    object.donations.count
  end
end
