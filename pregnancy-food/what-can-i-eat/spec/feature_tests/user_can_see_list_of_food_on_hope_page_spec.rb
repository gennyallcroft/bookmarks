require 'rails_helper'

RSpec.feature 'home page', type: :feature do
  scenario 'can see all the food' do
    visit '/food'
    expect(page).to have_content('What can I eat?')
  end
end
