class UsersController < ApplicationController
  before_action :find_user, only: [:show, :update, :destory]
  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: find_user
  end

  def create
    @user = User.create(user_params)

    if @user.valid?
      @token = JWT.encode({user_id: @user.id}, "secret")
      render json: { user: @user.name, jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  private
    def find_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :password, :email)
    end 
end