class DonationSerializer < ActiveModel::Serializer
  attributes :id, :donor_id, :fund_id, :fund_name, :amount

  def fund_name
    object.fund.title
  end
end
