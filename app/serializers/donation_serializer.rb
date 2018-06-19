class DonationSerializer < ActiveModel::Serializer
  attributes :id, :donor_id, :fund_id, :fund_picture, :amount, :fund_title

  def fund_title
    object.fund.title
  end

  def fund_picture
    object.fund.picture
  end
end
