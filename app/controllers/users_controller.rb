class UsersController < ApplicationController

  def new

    @user = User.new

    render json: @user.new

  end

  def create

    user = User.create user_params
    render json: user.create
  end

  def show

    @user = User.find params[:id]
    render json: @user.find params[:id]

  end

  def update

    user = User.find params[:id]

    user.update user_params
    render json: user.update

  end





  private

  def user_params

    params.require(:user).permit(:name, :email)

  end
end
