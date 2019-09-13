require 'rails_helper'

RSpec.describe FoodController, type: :controller do
  describe 'GET #index' do
    it 'assigns the food in the database to an instance variable of food_list' do
      @food_item = Food.create(:name => 'brie', :description => 'Sorry, you can\'t eat this')
      @food_list = Food.all
      expect(@food_list[0].name).to eq 'brie'
    end
  end

end
