class FundSerializer < ActiveModel::Serializer
  attributes :id, :title, :goal, :raised, :organization, :donor_count

  belongs_to :organization

  def donor_count
    object.donors.count
  end
end
