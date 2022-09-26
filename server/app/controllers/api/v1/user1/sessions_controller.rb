module Api
  module V1
    module User1
      class SessionsController < ApplicationController
        def create
          @user = User.find_by(email: params[:email])
          if @user && @user.valid_password?(params[:password])
            if user.activated?
              # remember user
              # params[:remember_me] == '1' ? remember(user) : forget(user) instead of line 10
              # uncomment with view-check box, if checked >> 1 >> remmeber, else 0 >> forget
              # Tutorial book 10.2.3/586 forwarding url >> how to add it to API?
              token = JsonWebToken.encode({ user_id: @user.id })
              render json: { user: @user, token: }, status: :ok
            else
              render json: { message1: 'Account not activated.',
                             message2: 'Check your email for the activation link.' }
            end
          else
            render json: { message: 'Error' }, status: :unprocessable_entity
          end
        end

        def destroy
          log_out if logged_in?
          render json: { message: 'Logged out' }, status: :ok
        end
      end
    end
  end
end
