require 'rails_helper'
require 'faker'

RSpec.describe List, type: :model do
  subject { List.new(status: "Found") }

  it "is not valid without a status" do
    subject.status=nil
    expect(subject).to_not be_valid
  end

end
