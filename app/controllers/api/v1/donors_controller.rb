module Api
  module V1

    class DonorsController < ApplicationController

      def show
        @donor = Donor.find(params[:id])
        if authorized?(@donor)
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

      def update
        @donor = Donor.find(donor_params[:id])
        @donor.update(donor_params)

        if authorized?(@donor) && @donor.valid?
          @donor.save

          render json: token_json(@donor)
        else
          render json:  @donor.errors.full_messages
        end
      end

      private
      def donor_params
        params.permit(:donor, :id, :username, :first_name, :last_name, :email, :password)
      end
    end

  end
end
