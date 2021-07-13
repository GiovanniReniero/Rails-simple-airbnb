class ReviewsController < ApplicationController

  before_action :find_flat

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.flat = @flat
    if @review.save
      redirect_to flat_path(@flat)
    else
      render "reviews/new"
    end
  end

private

  def review_params
    params.require(:review).permit(:review, :rating)
  end

  def find_flat
    @flat = Flat.find(params[:flat_id])
  end

end
