module Api
  module V1
    module User1
      class AccountActivationsController < ApplicationController
        def edit
          user = User.find_by(email: params[:email])
          if user && !user.activated? && user.authenticated?(:activation, params[:id])
            user.activate
            token = JsonWebToken.encode({user_id: @user.id})
            render json: {message: "Account activated!", user: user, token: token}, status: :ok
          else
            render json: {message: "Invalid activation link"}, status: :unprocessable_entity
          end
        end
      end
    end
  end
end