require 'rails_helper'

RSpec.feature "ShowContacts", type: :feature do
  context "update contacts" do
    Steps "You can update" do
      Given "I'm on the contacts page" do
        visit '/updatedlist/update'
      end
      Then "I can go to the update page" do
        expect(page).to have_content "UpdatePage"
      end
    end
  end
end
