require 'spec_helper'

feature "User visits owner roster" do
  it "sees a list of owners" do
    owner = Owner.new(first_name:'Charlie', last_name:'Sullivan', email:'sully@mail.com', dog_name:'Julie')
    visit '/owners'
    expect(page).to have_content "Local Dog Owners"
    expect(page).to have_content "Charlie"
  end

  it "visits an owner's page" do
    owner = Owner.new(first_name:'Charlie', last_name:'Sullivan', email:'sully@mail.com', dog_name:'Julie')
    visit '/owners'
    save_and_open_page
    expect(page).to have_content "Charlie Sullivan"
    expect(page).to have_content "Julie"
    expect(page).to have_content "E-Mail:"
  end

end


