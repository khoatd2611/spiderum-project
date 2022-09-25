module Api
  module V1
    module User1
      class UsersController < ApplicationController
        before_action :set_user, only: %i[show edit update destroy]
        before_action :logged_in_user, only: [:index, :edit, :update]
        before_action :correct_user, only: [:edit, :update]

        def index
          @users = User.paginate(page: params[:page], per_page: 20)
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
          if @user.update(user_params)
            render json: {user: @user}, status: :ok
          else
            render json: {error: "Update false"}, status: :unprocessable_entity
          end
        end

        def destroy
        end

      private
      # set user with params id
        def set_user
          @user = User.find(params[:id])
        end

        def user_params
          params.permit(:name, :email, :password, :password_confirmation)
        end

        # Confirms a logged-in user.
        def logged_in_user
          unless logged_in?
            render json: {message: "Please log in."}, status: :unprocessable_entity
          end
        end

        # Confirms the correct user.
        def correct_user
          @user = User.find(params[:id])
          render josn: {message: "You have no right to do this!"} unless @user == current_user
        end
      end
    end
  end
end
