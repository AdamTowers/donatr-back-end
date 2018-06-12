class FundSerializer < ActiveModel::Serializer
  attributes :id, :organization_id, :title, :description, :goal, :raised, :donation_count, :organization_name,

  def organization_name
    object.organization.name
  end

  def donation_count
    object.donations.count
  end

  def raised
    total = 0
    object.donations.each do |d|
      total += d.amount
    end

    return total
  end
end
