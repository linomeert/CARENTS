class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @playdate = Playdate.find(params[:playdate_id])
    @review.playdate = @playdate
    @review.save
    redirect_to playdate_path(@playdate)

  end
end


  private


def review_params
   params.require(:review).permit(:title, :description)
end
