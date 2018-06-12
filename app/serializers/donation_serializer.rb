class DonationSerializer < ActiveModel::Serializer
  attributes :id, :donor_id, :fund_id, :amount, :fund, :donor

  belongs_to :fund
  belongs_to :donor
end
