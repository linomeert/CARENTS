class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @playdate = Playdate.find(params[:playdate_id])
  end

  def create

    @review = Review.new(review_params)
    @playdate = Playdate.find(params[:playdate_id])
    @user = User.find(params[:user_id])
    @review.user = @user
    @review.playdate = @playdate
    @review.save
    redirect_to dashboard_past_playdates_path
  end
end

private

def review_params
  params.require(:review).permit(:title, :description, :user)
end
