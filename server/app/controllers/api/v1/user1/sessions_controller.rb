module Api
  module V1
    module User1
      class SessionsController < ApplicationController

        def create
          @user = User.find_by(email: params[:email])
          if @user && @user.valid_password?(params[:password])
            remember user
            token = JsonWebToken.encode({user_id: @user.id})
            render json: {user: @user, token: token}, status: :ok
          else
            render json: {message: "Error"}, status: 400
          end
        end

        def destroy
          log_out
          render json: {message: "Logged out"}, status: :ok
        end

      end
    end
  end
end
