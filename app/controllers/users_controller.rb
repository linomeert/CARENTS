class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])

    @playdates = Playdate.all.where("inviter_id = ? OR receiver_id = ?", @user, @user)

  end
end
