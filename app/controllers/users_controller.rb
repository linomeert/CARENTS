class UsersController < ApplicationController
  def index
    @users = User.all

    @current_lat = params[:lat]
    @current_lon = params[:lon]
    if (@current_lat.nil? || @current_lon.nil?)
      @users = User.all
    else
     @users = User.near([@current_lat, @current_lon], 10, :units => :km)
   end
  end

  def show
    @user = User.find(params[:id])
  end
end
