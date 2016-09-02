class UsersController < ApplicationController
  def index
  end

  def register
    contact=Contact.new
    contact.given_name =params[:given_name]
    contact.family_name =params[:family_name]
    contact.home_address =params[:home_address]
    contact.email =params[:email]
    contact.save
    @contacts = Contact.all
    render '/users/register'
  end
end
