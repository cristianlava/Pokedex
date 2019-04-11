class Users < ApplicationController
  before_action :find_user, only: [:show, :update, :destory]
  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: find_user
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user
    else
      render json: @user.errors
  end

  private
    def find_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :password, :email)
    end 
end