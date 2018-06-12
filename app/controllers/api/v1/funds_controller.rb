module Api
  module V1

    class FundsController < ApplicationController
      def index
        @funds = Fund.all

        render json: @funds
      end

      # private
      # def fund_params
      #   params.permit(:id, :username, :name, :bio, :email, :password, :password_digest)
      # end
    end

  end
end
