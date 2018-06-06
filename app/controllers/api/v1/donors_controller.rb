module Api
  module V1

    class DonorsController < ApplicationController
      def index
        @donors = Donor.all

        render json: @donors
      end

      def show
        @donor = Donor.find(params[:id])
        if (authorized?(@donor))
          render json: @donor
        else
          render json: { unauthorized: true }, status: :unauthorized
        end
      end

      def create
        @donor = Donor.new(donor_params)

        if @donor.valid?
          @donor.save

          render json: token_json(@donor)
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
