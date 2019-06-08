require 'rails_helper'

RSpec.describe TegnerLysholm, type: :model do

  it "is not valid without instability" do
    tegnerLysholm = TegnerLysholm.new(instability: nil)
    expect(tegnerLysholm).to_not be_valid
  end
  it "is not valid without pain" do
    tegnerLysholm = TegnerLysholm.new(pain: nil)
    expect(tegnerLysholm).to_not be_valid
  end
  it "is not valid without swelling" do
    tegnerLysholm = TegnerLysholm.new(swelling: nil)
    expect(tegnerLysholm).to_not be_valid
  end
  it "is not valid without climb_stairs" do
    tegnerLysholm = TegnerLysholm.new(climb_stairs: nil)
    expect(tegnerLysholm).to_not be_valid
  end
  it "is not valid without squat" do
    tegnerLysholm = TegnerLysholm.new(squat: nil)
    expect(tegnerLysholm).to_not be_valid
  end
  it "is not valid without locking" do
    tegnerLysholm = TegnerLysholm.new(locking: nil)
    expect(tegnerLysholm).to_not be_valid
  end
  it "is not valid without locking" do
    tegnerLysholm = TegnerLysholm.new(locking: nil)
    expect(tegnerLysholm).to_not be_valid
  end
  it "is not valid without limp" do
    tegnerLysholm = TegnerLysholm.new(limp: nil)
    expect(tegnerLysholm).to_not be_valid
  end
  it "is not valid without support" do
    tegnerLysholm = TegnerLysholm.new(support: nil)
    expect(tegnerLysholm).to_not be_valid
  end
end