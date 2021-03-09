module Api
  module V1

    class AuthController < ApplicationController
      def create
        user = User.find_by( username: user_params[:username] )

        if user.blank?
          render json: { error: 'Invalid username' }, status: :unauthorized
        elsif user.authenticate( user_params[:password] )
          access_token = JWT.encode({
            id: user.id
          }, Rails.application.secrets.secret_key_base)
          render json: { 
            id: user.id,
            username: user.username,
            nombre_completo: "#{user.nombre} #{user.apellidos}",
            access_token: access_token 
          }
        else
          render json: { message: "Wrong password!" }
        end
      end

      private
        def user_params
          params.require(:user).permit(:username, :password)
        end
    end

  end
end
