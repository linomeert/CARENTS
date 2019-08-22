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
     @markers = @users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { user: user }),
        image_url: helpers.asset_url('markergreen.png')

      }
    end

  end

  def show
    @user = User.find(params[:id])

    @playdates = Playdate.all.where("inviter_id = ? OR receiver_id = ?", @user, @user)

  end
end
