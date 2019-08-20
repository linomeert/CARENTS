class PlaydatesController < ApplicationController
  before_action :set_playdate, only: [:show, :edit, :update, :destroy]

  def index
    @playdates = Playdate.all
    @playdates_to_accept = Playdate.all.where('receivers_id': current_user, 'status': nil)
    @playdates_pending = Playdate.all.where('inviter': current_user, 'status': nil)
    @playdates_upcoming = Playdate.all.where("date > ? AND status = ? AND inviter_id = ? OR receivers_id = ?", DateTime.now, true, current_user, current_user, )
    @playdates_upcoming = Playdate.all.where("date < ? AND status = ? AND inviter_id = ? OR receivers_id = ?", DateTime.now, true, current_user, current_user, )
    @playdates_rejected = Playdate.all.where("date > ? AND inviter_id = ? AND status = ?", DateTime.now, current_user, false)
  end

  def edit
  end

  def new
    @playdate = Playdate.new
    @receiver = User.find params[:user_id]
  end

  def create
    @playdate = Playdate.new(playdate_params)
    @playdate.inviter = current_user
    @playdate.receivers_id = params[:user_id]

    if @playdate.save

      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @playdate.destroy
    redirect_to playdates_index_path
  end

  def set_playdate
    @playdate = Playdate.find(params[:id])
  end

  def playdate_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:playdate).permit(:description, :status, :status, :date, :location)
  end
end
