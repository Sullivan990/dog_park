require 'spec_helper'

feature "User visits owner roster" do
  it "sees a list of owners" do
    owner = Owner.create!(first_name:'Charlie', last_name:'Sullivan', email:'sully@mail.com', dog_name:'Julie')
    visit '/owners'
    expect(page).to have_content "Local Dog Owners"
    expect(page).to have_content "Charlie"
  end

  it "visits an owner's page" do
    owner = Owner.create!(first_name:'Charlie', last_name:'Sullivan', email:'sully@mail.com', dog_name:'Julie')
    visit '/owners/1'
    expect(page).to have_content "Charlie Sullivan"
    expect(page).to have_content "Julie"
    expect(page).to have_content "E-Mail:"
  end

end


