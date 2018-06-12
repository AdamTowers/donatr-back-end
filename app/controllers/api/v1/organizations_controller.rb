module Api
  module V1

    class OrganizationsController < ApplicationController
      def index
        @organizations = Organization.all

        render json: @organizations
      end

      def show
        @organization = Organization.find(params[:id])
        if (authorized?(@organization))
          render json: @organization
        else
          render json: { unauthorized: true }, status: :unauthorized
        end
      end

      def create
        @organization = Organization.new(organization_params)

        if @organization.valid?
          @organization.save

          render json: token_json(@organization)
        else
          render json: @organization.errors.full_messages
        end
      end

      private
      def organization_params
        params.permit(:id, :username, :name, :bio, :email, :password, :password_digest)
      end
    end

  end
end
