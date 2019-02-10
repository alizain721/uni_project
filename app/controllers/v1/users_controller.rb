module V1
  class UsersController < ApplicationController
    def create
      @user = User.new(user_params)
      if @user.save
        render :create
      else
        head(:unprocessable_entity)
      end
    end

    def login
      @user = User.where(email:params[:user][:email], password:params[:user][:password])
      if @user.count > 0
        render status: 200
      else
        render status: 401
      end
    end

    private

    def user_params
      params.require(:user).permit(:email, :password)
    end
  end
end
