class DonationSerializer < ActiveModel::Serializer
  attributes :id, :donor_id, :fund_id, :amount
end
