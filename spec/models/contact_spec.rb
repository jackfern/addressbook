require 'rails_helper'

RSpec.describe Contact, type: :model do
  it "is a thaaang" do
    expect{Contact.new}.to_not raise_error
  end

end
