require 'rails_helper'
require 'faker'

RSpec.describe Dog, type: :model do
  subject { Dog.new(breed: "Pitbull", color: "grey", size: "medium", location: "downtown", description: "djjfajgsgsk", first_name: "Jack", last_name: "Smith", phone: "8889995678", email: "jsmith@sample.com" )}

  it "is not valid without a breed" do
    subject.breed=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a color" do
    subject.color=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a size" do
    subject.size=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a location" do
    subject.location=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a description" do
    subject.description=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a first_name" do
    subject.first_name=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a last_name" do
    subject.last_name=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a phone" do
    subject.phone=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a email" do
    subject.email=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a list id" do
    subject.list_id=nil
    expect(subject).to_not be_valid
  end

end
