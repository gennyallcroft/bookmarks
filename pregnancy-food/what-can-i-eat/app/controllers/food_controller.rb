class FoodController < ApplicationController

  def index
    p Food.all
    render 'food/index'
  end




end
