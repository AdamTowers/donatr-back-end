module Api
  module V1

    class DonorsController < ApplicationController
      def index
        @donors = Donor.all

        render json: @donors
      end

      def show
        @donors = @donors.find(params[:id])

        render json: @donors, status: 200
      end

      def create
        @donor = Donor.new(donor_params)

        if @donor.valid?
          @donor.save
          # for auth
          # render json: token_json(@donor)
          render json: @donor
        else
          render json:  @donor.errors.full_messages
        end
      end

      private
      def donor_params
        params.require(:donor).permit(:username, :first_name, :last_name, :password, :password_digest)
      end
    end

  end
end
