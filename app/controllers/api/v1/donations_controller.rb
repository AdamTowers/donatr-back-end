module Api
  module V1

    class DonationsController < ApplicationController
      def create
        @donation = Donation.new(donation_params)

        if @donation.valid?
          @donation.save

          render json: @donation
        else
          render json:  @donation.errors.full_messages
        end
      end

      def current_donor_donations
        @donor = Donor.find(current_user_id)

        if (authorized?(@donor))
          @donations = @donor.donations
          render json: @donations
        else
          render json: { unauthorized: true }, status: :unauthorized
        end
      end

      private
      def donation_params
        params.require(:donation).permit(:donor_id, :fund_id, :amount)
      end
    end

  end
end
