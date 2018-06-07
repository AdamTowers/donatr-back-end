module Api
  module V1

    class SessionsController < ApplicationController

      def create_donor_sessions
        @user = Donor.find_by(username: params["username"])
        if (@user && @user.authenticate(params["password"]))
          render json: token_json(@user)
        else
          render json: {
            errors: "Those credentials don't match anything we have in our database."
          }, status: :unauthorized
        end
      end

      def create_organization_sessions
        @user = Organization.find_by(username: params["username"])
        if (@user && @user.authenticate(params["password"]))
          render json: token_json(@user)
        else
          render json: {
            errors: "Those credentials don't match anything we have in our database."
          }, status: :unauthorized
        end
      end

    end

  end
end
