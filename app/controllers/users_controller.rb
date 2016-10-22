class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index
  end

  def show
    render json: @user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json: { errors: @user.errors }, status: :unprocessable_entity
  end

  def update
    user = current_user
    if user.update(user_params)
      render json: user, status: 200, location: user
    else
      render json: { errors: user.errors}, status: :unprocessable_entity
  end

  def destroy
    @user.destroy
    head 204
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :first_name, :last_name, :zipcode, :bio, :goals)
    end

    def set_user
      @user = User.find(session[:id])
    end
end
