class FundSerializer < ActiveModel::Serializer
  attributes :id, :organization_id, :title, :description, :goal, :raised, :percent_raised, :picture, :donation_count, :organization_name,

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

  def percent_raised
    (((1.0*object.raised)/(1.0*object.goal))*100).floor
  end
end
