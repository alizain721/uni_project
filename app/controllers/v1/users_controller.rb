module V1
  class UsersController < ApplicationController
    def create
      @user = User.new(user_params)
      if @user.save
        render json: {status: 'SUCCESS', message: 'Nasli Murghi', data:@user}
      else
        head(:unprocessable_entity)
      end
    end

    def login
      @user = User.where(id:params[:user][:student_id], password:params[:user][:password]).take
      if @user.present?
        render json: { status: 'SUCCESS', user:@user}
      else
        render status: 401
      end
    end

    private

    def user_params
      params.require(:user).permit(:email, :password, :first_name, :last_name)
    end
  end
end
