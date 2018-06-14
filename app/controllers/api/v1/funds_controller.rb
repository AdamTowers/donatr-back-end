module Api
  module V1

    class FundsController < ApplicationController
      def index
        @funds = Fund.all

        render json: @funds
      end

      def show
        @fund = Fund.find(fund_params[:id])

        render json: @fund
      end

      private
      def fund_params
        params.permit(:id, :title, :goal, :raised, :donation_count, :organization_name)
      end
    end

  end
end
