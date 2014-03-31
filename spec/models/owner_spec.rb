require 'spec_helper'

describe Owner do
  owner = Owner.new(first_name:'Charlie', last_name:'Sullivan', email:'sully@mail.com', dog_name:'Julie')
  it "has a first name" do
    expect(owner.first_name).to eq('Charlie')
  end

  it "has a last name" do
    expect(owner.last_name).to eq('Sullivan')
  end

  it "has a full name" do
    expect(owner.full_name(owner)).to eq("Charlie Sullivan")
  end

  it "has an email" do
    expect(owner.email).to eq('sully@mail.com')
  end

  it "Has a dog with a name" do
    expect(owner.dog_name).to eq('Julie')
  end

end
