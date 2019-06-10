require 'rails_helper'

RSpec.describe Perimetry, type: :model do

  it "is not valid without a left_arm_relaxed" do
    perimetry = Perimetry.new(left_arm_relaxed: nil)
    expect(perimetry).to_not be_valid
  end
  it "is not valid without a right_arm_relaxed" do
    perimetry = Perimetry.new(right_arm_relaxed: nil)
    expect(perimetry).to_not be_valid
  end
  it "is not valid without a left_contracted_arm" do
    perimetry = Perimetry.new(left_contracted_arm: nil)
    expect(perimetry).to_not be_valid
  end
  it "is not valid without a right_contracted_arm" do
    perimetry = Perimetry.new(right_contracted_arm: nil)
    expect(perimetry).to_not be_valid
  end
  it "is not valid without a chest" do
    perimetry = Perimetry.new(chest: nil)
    expect(perimetry).to_not be_valid
  end
  it "is not valid without a abdomen" do
    perimetry = Perimetry.new(abdomen: nil)
    expect(perimetry).to_not be_valid
  end
  it "is not valid without a left_proximal_thigh" do
    perimetry = Perimetry.new(left_proximal_thigh: nil)
    expect(perimetry).to_not be_valid
  end
  it "is not valid without a right_proximal_thigh" do
    perimetry = Perimetry.new(right_proximal_thigh: nil)
    expect(perimetry).to_not be_valid
  end
  it "is not valid without a left_middle_thigh" do
    perimetry = Perimetry.new(left_middle_thigh: nil)
    expect(perimetry).to_not be_valid
  end
  it "is not valid without a right_middle_thigh" do
    perimetry = Perimetry.new(right_middle_thigh: nil)
    expect(perimetry).to_not be_valid
  end
  it "is not valid without a left_distal_thigh" do
    perimetry = Perimetry.new(left_distal_thigh: nil)
    expect(perimetry).to_not be_valid
  end
  it "is not valid without a right_distal_thigh" do
    perimetry = Perimetry.new(right_distal_thigh: nil)
    expect(perimetry).to_not be_valid
  end
  it "is not valid without a left_leg" do
    perimetry = Perimetry.new(left_leg: nil)
    expect(perimetry).to_not be_valid
  end
  it "is not valid without a right_leg" do
    perimetry = Perimetry.new(right_leg: nil)
    expect(perimetry).to_not be_valid
  end
  it "is not valid without a waist" do
    perimetry = Perimetry.new(waist: nil)
    expect(perimetry).to_not be_valid
  end
  it "is not valid without a hip" do
    perimetry = Perimetry.new(hip: nil)
    expect(perimetry).to_not be_valid
  end
end