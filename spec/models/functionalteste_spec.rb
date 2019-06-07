require 'rails_helper'

RSpec.describe FunctionalTest, type: :model do

  it "is not valid without a right_PA" do
    functionalteste = FunctionalTest.new(right_PA: nil)
    expect(functionalteste).to_not be_valid
  end
  it "is not valid without a right_PM" do
    functionalteste = FunctionalTest.new(right_PM: nil)
    expect(functionalteste).to_not be_valid
  end
  it "is not valid without a right_PL" do
    functionalteste = FunctionalTest.new(right_PL: nil)
    expect(functionalteste).to_not be_valid
  end
  it "is not valid without a right_CM" do
    functionalteste = FunctionalTest.new(right_CM: nil)
    expect(functionalteste).to_not be_valid
  end
   it "is not valid without a right_result" do
    functionalteste = FunctionalTest.new(right_result: nil)
    expect(functionalteste).to_not be_valid
  end
  it "is not valid without a left_PA" do
    functionalteste = FunctionalTest.new(left_PA: nil)
    expect(functionalteste).to_not be_valid
  end
  it "is not valid without a left_PM" do
    functionalteste = FunctionalTest.new(left_PM: nil)
    expect(functionalteste).to_not be_valid
  end
  it "is not valid without a left_PL" do
    functionalteste = FunctionalTest.new(left_PL: nil)
    expect(functionalteste).to_not be_valid
  end
  it "is not valid without a left_CM" do
    functionalteste = FunctionalTest.new(left_CM: nil)
    expect(functionalteste).to_not be_valid
  end
  it "is not valid without a left_result" do
    functionalteste = FunctionalTest.new(left_result: nil)
    expect(functionalteste).to_not be_valid
  end
  it "is not valid without a right_MMSS" do
    functionalteste = FunctionalTest.new(right_MMSS: nil)
    expect(functionalteste).to_not be_valid
  end
  it "is not valid without a right_moviment" do
    functionalteste = FunctionalTest.new(right_moviment: nil)
    expect(functionalteste).to_not be_valid
  end
  it "is not valid without a right_pelvis_plane" do
    functionalteste = FunctionalTest.new(right_pelvis_plane: nil)
    expect(functionalteste).to_not be_valid
  end
  it "is not valid without a right_knee_position" do
    functionalteste = FunctionalTest.new(right_knee_position: nil)
    expect(functionalteste).to_not be_valid
  end
  it "is not valid without  right_valg" do
    functionalteste = FunctionalTest.new(right_valg: nil)
    expect(functionalteste).to_not be_valid
  end
  it "is not valid without right_posture" do
    functionalteste = FunctionalTest.new(right_posture: nil)
    expect(functionalteste).to_not be_valid
  end
  it "is not valid without right_step_result" do
    functionalteste = FunctionalTest.new(right_step_result: nil)
    expect(functionalteste).to_not be_valid
  end
  it "is not valid without left_MMSS" do
    functionalteste = FunctionalTest.new(left_MMSS: nil)
    expect(functionalteste).to_not be_valid
  end
  it "is not valid without left_moviment" do
    functionalteste = FunctionalTest.new(left_moviment: nil)
    expect(functionalteste).to_not be_valid
  end
  it "is not valid without left_pelvis_plane" do
    functionalteste = FunctionalTest.new(left_pelvis_plane: nil)
    expect(functionalteste).to_not be_valid
  end
  it "is not valid without left_knee_position" do
    functionalteste = FunctionalTest.new(left_knee_position: nil)
    expect(functionalteste).to_not be_valid
  end
  it "is not valid without left_valg" do
    functionalteste = FunctionalTest.new(left_valg: nil)
    expect(functionalteste).to_not be_valid
  end
  it "is not valid without left_posture" do
    functionalteste = FunctionalTest.new(left_posture: nil)
    expect(functionalteste).to_not be_valid
  end
  it "is not valid without left_step_result" do
    functionalteste = FunctionalTest.new(left_step_result: nil)
    expect(functionalteste).to_not be_valid
  end
end