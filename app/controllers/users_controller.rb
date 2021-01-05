class UsersController < ApplicationController

  def new

    @user = User.new

    render json: User.new

  end

  def create

    user = User.create user_params
    render json: User.create
  end

  def show

    @user = User.find params[:id]
    render json: User.find params[:id]

  end

  def update

    user = User.find params[:id]

    user.update user_params
    render json: User.update

  end





  private

  def user_params

    params.require(:user).permit(:name, :email)

  end
end
