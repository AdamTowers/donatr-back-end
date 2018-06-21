module Api
  module V1

    class DonationsController < ApplicationController
      def create
        @donation = Donation.new(donation_params)

        if @donation.valid?
          @donation.save

          render json: @donation
        else
          render json:  { :errors => @donation.errors.full_messages }, :status => 422
        end
      end

      private
      def donation_params
        params.require(:donation).permit(:donor_id, :fund_id, :amount)
      end
    end

  end
end
