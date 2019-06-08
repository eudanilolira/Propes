require 'rails_helper'

RSpec.describe Physical, type: :model do

  it "is not valid without a blood_pressure" do
    physical = Physical.new(blood_pressure: nil)
    expect(physical).to_not be_valid
  end
  it "is not valid without a respiratory_frequency" do
    physical = Physical.new(respiratory_frequency: nil)
    expect(physical).to_not be_valid
  end
  it "is not valid without a heart_rate" do
    physical = Physical.new(heart_rate: nil)
    expect(physical).to_not be_valid
  end
  it "is not valid without a SpO2" do
    physical = Physical.new(SpO2: nil)
    expect(physical).to_not be_valid
  end
  it "is not valid without a weight" do
    physical = Physical.new(weight: nil)
    expect(physical).to_not be_valid
  end
  it "is not valid without a height" do
    physical = Physical.new(height: nil)
    expect(physical).to_not be_valid
  end
  it "is not valid without a imc" do
    physical = Physical.new(imc: nil)
    expect(physical).to_not be_valid
  end
end