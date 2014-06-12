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

  scenario 'User can edit and update list of restaurants' do
    visit '/'
    click_on 'Add a restaurant'
    fill_in 'Restaurant name', with: 'Pizza Hut'
    fill_in 'Food type', with: 'Italian'
    click_on 'Create a restaurant'
    expect(page).to have_content 'Pizza Hut'
    expect(page).to have_content 'Italian'
    click_on 'Pizza Hut'
    expect(page).to have_content 'Pizza Hut'
    expect(page).to have_content 'Italian'
    click_on 'Edit restaurant'
    fill_in 'Restaurant name', with: 'McDonalds'
    fill_in 'Food type', with: 'fast food'
    click_on 'Update restaurant'
    expect(page).to have_no_content 'Pizza Hut'
    expect(page).to have_no_content 'Italian'
    expect(page).to have_content 'McDonalds'
    expect(page).to have_content 'fast food'


  end
end