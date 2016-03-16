class FoodItemsController < ApplicationController
  # GET /search
  def index
    @food_items = FoodItem.all
  end

  # GET /food_items/1
  def show
    @food_item = FoodItem.find(params[:id])
  end

  private
end
