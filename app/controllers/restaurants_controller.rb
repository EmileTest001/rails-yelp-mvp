class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]

  # => rails-yelp-mvp git:(master) ✗ rails routes
# Prefix Verb URI Pattern                                       Controller#Action
# restaurant_reviews POST /restaurants/:restaurant_id/reviews(.:format)     reviews#create
# new_restaurant_review GET  /restaurants/:restaurant_id/reviews/new(.:format) reviews#new
#        restaurants GET  /restaurants(.:format)                            restaurants#index
#                    POST /restaurants(.:format)                            restaurants#create
#     new_restaurant GET  /restaurants/new(.:format)                        restaurants#new
#         restaurant GET  /restaurants/:id(.:format)                        restaurants#show

  def index
    @restaurants = Restaurant.all
  end

  def show
    # inutile avec l'appel de #before_action
    # @restaurant = Restaurant.find(params[:id])
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
