module Api
  module V1
    module User1
      class UsersController < ApplicationController
        before_action :set_user, only: %i[show edit update destroy]

        def index
          @users = User.all
          render json: {users: @users},status: :ok
        end

        def show
          render json: {user: @user}, status: :ok
        end

        def new
          @user = User.new
        end

        def create 
          @user = User.new(user_params)
          if @user.save
            token = JsonWebToken.encode({user_id: @user.id})
            render json: {user: @user, token: token}, status: :ok
          else
            render json: {error: "Sign up false"}, status: :unprocessable_entity
          end
        end

        def edit
        end

        def update 
          if @user.update(name: params[:name])
            render json: {user: @user}, status: :ok
          else
            render json: {error: "Update false"}, status: :unprocessable_entity
          end
        end

        def destroy
        end

        def login
          @user = User.find_by(email: params[:email])
          if @user && @user.valid_password?(params[:password])
            token = JsonWebToken.encode({user_id: @user.id})
            render json: {user: @user, token: token}, status: :ok
          else
            render json: {message: "Error"}, status: 400
          end
        end

      private
      # set user with params id
        def set_user
          @user = User.find(params[:id])
        end

        def user_params
          params.permit(:name, :email, :password, :password_confirmation)
        end
      end
    end
  end
end
