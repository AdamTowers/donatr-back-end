module Api
  module V1

    class DonationsController < ApplicationController
      def index
        @donations = Donation.all

        render json: @donations
      end

      def create
        @donation = Donation.new(donation_params)

        if @donation.valid?
          @donation.save
          # auth?
          # render json: token_json(@donation)
          render json: @donation
        else
          render json:  @donation.errors.full_messages
        end
      end

      private
      def donation_params
        params.require(:donation).permit(:donor_id, :fund_id, :amount)
      end
    end

  end
end
