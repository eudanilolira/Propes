require 'rails_helper'

RSpec.describe Cooper, type: :model do

  it "is not valid without a distance" do
    cooper = Cooper.new(distance: nil)
    expect(cooper).to_not be_valid
  end
  it "is not valid without a aerobic_capacity" do
    cooper = Cooper.new(aerobic_capacity: nil)
    expect(cooper).to_not be_valid
  end
  it "is not valid without a v2max" do
    cooper = Cooper.new(v2max: nil)
    expect(cooper).to_not be_valid
  end
end