class UsersController < ApplicationController
  def create
    @user = User.create(user_params)
    @user.save
    render json: @user
  end

  def index
    @user = User.all
    render json: @user
  end

  def show
    @user = User.find_by_facebook_uuid(params[:facebook_uuid])
    render json: @user
  end

  def update
    @user = User.find_by_facebook_uuid(params[:facebook_uuid])
    if @user.update_attributes(user_params)
      render json: @user
    else
      render json: {"message":"update unsuccessful"}
    end
  end
  private

  def user_params
    params.permit(:facebook_uuid, :x_coord, :y_coord)
  end
end
