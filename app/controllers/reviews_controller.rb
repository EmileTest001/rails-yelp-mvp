class ReviewsController < ApplicationController

  # => rails-yelp-mvp git:(master) ✗ rails routes
# Prefix Verb URI Pattern                                       Controller#Action
# restaurant_reviews POST /restaurants/:restaurant_id/reviews(.:format)     reviews#create
# new_restaurant_review GET  /restaurants/:restaurant_id/reviews/new(.:format) reviews#new
#        restaurants GET  /restaurants(.:format)                            restaurants#index
#                    POST /restaurants(.:format)                            restaurants#create
#     new_restaurant GET  /restaurants/new(.:format)                        restaurants#new
#         restaurant GET  /restaurants/:id(.:format)                        restaurants#show

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    p "in reviews.create"
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])

    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
