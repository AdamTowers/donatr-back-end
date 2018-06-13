class DonationSerializer < ActiveModel::Serializer
  attributes :id, :donor_id, :fund_id, :amount, :fund_title

  def fund_title
    object.fund.title
  end
end
