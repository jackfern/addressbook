require 'rails_helper'

RSpec.feature "addcontacts", type: :feature do
  context "going to a website" do
    Steps "You are going to be welcomed" do
      Given "I'm on a registration page" do
        visit '/'
      end
      Then 'I can see a welcome message' do
        expect(page).to have_content "Welcome"
      end
      Then 'I can enter multiple peoples information' do
         fill_in 'given_name', with: 'Nucky'
         fill_in 'family_name', with: 'Spimoni'
         fill_in 'email', with: 'Nucky@gmail.com'
         fill_in 'home_address', with: '123 Ritz st'
         click_button 'Enter Contact'
         visit '/'
         fill_in 'given_name', with: 'Lucky'
         fill_in 'family_name', with: 'Pimoni'
         fill_in 'email', with: 'Lucky@gmail.com'
         fill_in 'home_address', with: '124 Ritz st'
         click_button 'Enter Contact'
      end
      Then 'I can see all the contacts' do
         expect(page).to have_content 'Nucky'
         expect(page).to have_content 'Spimoni'
         expect(page).to have_content 'Lucky'
         expect(page).to have_content 'Pimoni'
         expect(page).to have_content 'Lucky@gmail.com'
         expect(page).to have_content 'Nucky@gmail.com'
         expect(page).to have_content '124 Ritz st'
         expect(page).to have_content '123 Ritz st'
      end
    end
  end
end #end of rspec
