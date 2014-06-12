require 'spec_helper'

feature 'Manage Restaurants' do
  scenario 'User can create and view list of restaurants' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a restaurant'
    fill_in 'Restaurant name', with: 'Pizza Hut'
    fill_in 'Food type', with: 'Italian'
    click_on 'Create a restaurant'
    expect(page).to have_content 'Pizza Hut'
    expect(page).to have_content 'Italian'

  end
end