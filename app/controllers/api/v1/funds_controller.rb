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

      def create
        @fund = Fund.new(fund_params)
        @organization = Organization.find_by(id: params["organization_id"])

        if @fund.valid? && authorized?(@organization)
          @fund.save

          render json: @fund
        else
          render json:  { :errors => @fund.errors.full_messages }, :status => 422
        end
      end

      def update
        @fund = Fund.find_by(id: fund_params[:id])
        @fund.update(fund_params)
        @organization = Organization.find_by(id: params["organization_id"])

        if @fund.valid? && authorized?(@organization)
          @fund.save

          render json: @fund
        else
          render json: { unauthorized: true }, status: :unauthorized
        end
      end

      private
      def fund_params
        params.permit(
          :id,
          :organization_id,
          :title,
          :description,
          :goal,
          :raised,
          :active,
          :picture,
          :donation_count,
          :organization_name
        )
      end
    end

  end
end
