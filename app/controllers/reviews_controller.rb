class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(params[:restaurant_id])
    else
      render :new, status: :unprocessable_entity
    end

  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
