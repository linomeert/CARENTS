class PlaydatesController < ApplicationController
  before_action :set_playdate, only: [:show, :edit, :update, :destroy, :accept_playdate, :reject_playdate, :notified_acceptance]
  before_action :set_playdate_requests_upcoming, only: [:upcoming_playdates, :playdate_requests, :pending_playdates, :past_playdates, :notified_acceptance]

  def index
  end

  def upcoming_playdates
  end

  def playdate_requests
  end

  def pending_playdates
    @playdates_pending = Playdate.where(inviter_id: current_user.id, status: nil)
  end

  def past_playdates
    @playdates_past = Playdate.all.where("date < ? AND inviter_id = ? OR receiver_id = ? AND status IS ?", DateTime.now, current_user.id, current_user.id, true)
  end

  def accept_playdate
    @playdate.status = true
    @playdate.save
    redirect_to dashboard_playdate_requests_path
  end

  def reject_playdate
    @playdate.status = false
    @playdate.save
    redirect_to dashboard_playdate_requests_path
  end

  def notified_acceptance
    @playdate.notified_acceptance = true
    @playdate.save
    redirect_to dashboard_upcoming_playdates_path
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
    @playdate.receiver_id = params[:user_id]

    if @playdate.save
      redirect_to dashboard_pending_playdates_path
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @playdate.destroy
    redirect_to dashboard_upcoming_playdates_path
  end

  private

  def set_playdate
    @playdate = Playdate.find(params[:id])
  end


  def set_playdate_requests_upcoming
    @playdates_requests = Playdate.where(receiver_id: current_user.id, status: nil)
    @playdates_upcoming = Playdate.all.where(status: true).where("date > ? AND inviter_id = ? OR receiver_id = ?", DateTime.now, current_user, current_user)
    @playdates_rejected = Playdate.all.where(status: false).where("date > ? AND inviter_id = ? OR receiver_id = ?", DateTime.now, current_user, current_user)

  end

  def playdate_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:playdate).permit(:description, :status, :date, :location)
  end
end
