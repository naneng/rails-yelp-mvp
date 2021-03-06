class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    @review.save
      if @review.save
        redirect_to restaurant_path(params[:restaurant_id])
      else
        render :new
      end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
