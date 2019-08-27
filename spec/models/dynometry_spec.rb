require 'rails_helper'

RSpec.describe Dynometry, type: :model do

  it "is not valid without a peak_extension_right" do
    dynometry = Dynometry.new(peak_extension_right: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a peak_extension_left" do
    dynometry = Dynometry.new(peak_extension_left: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a peak_extension_deficit" do
    dynometry = Dynometry.new(peak_extension_deficit: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a peak_flexion_right" do
    dynometry = Dynometry.new(peak_flexion_right: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a peak_flexion_left" do
    dynometry = Dynometry.new(peak_flexion_left: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a peak_flexion_deficit" do
    dynometry = Dynometry.new(peak_flexion_deficit: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a power_extension_right_180" do
    dynometry = Dynometry.new(power_extension_right_180: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a power_extension_left_180" do
    dynometry = Dynometry.new(power_extension_left_180: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a power_extension_deficit_180" do
    dynometry = Dynometry.new(power_extension_deficit_180: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a power_flexion_right_180" do
    dynometry = Dynometry.new(power_flexion_right_180: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a power_flexion_left_180" do
    dynometry = Dynometry.new(power_flexion_left_180: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a power_flexion_deficit_180" do
    dynometry = Dynometry.new(power_flexion_deficit_180: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a power_extension_right_300" do
    dynometry = Dynometry.new(power_extension_right_300: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a power_extension_left_300" do
    dynometry = Dynometry.new(power_extension_left_300: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a power_extension_deficit_300" do
    dynometry = Dynometry.new(power_extension_deficit_300: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a power_flexion_right_300" do
    dynometry = Dynometry.new(power_flexion_right_300: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a power_flexion_left_300" do
    dynometry = Dynometry.new(power_flexion_left_300: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a power_flexion_deficit_300" do
    dynometry = Dynometry.new(power_flexion_deficit_300: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a job_extension_right_180" do
    dynometry = Dynometry.new(job_extension_right_180: nil)
    expect(dynometry).to_not be_valid
  end
   it "is not valid without a job_extension_left_180" do
    dynometry = Dynometry.new(job_extension_left_180: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a job_extension_deficit_180" do
    dynometry = Dynometry.new(job_extension_deficit_180: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a job_flexion_right_180" do
    dynometry = Dynometry.new(job_flexion_right_180: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a job_flexion_left_180" do
    dynometry = Dynometry.new(job_flexion_left_180: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a job_flexion_deficit_180" do
    dynometry = Dynometry.new(job_flexion_deficit_180: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a job_extension_right_300" do
    dynometry = Dynometry.new(job_extension_right_300: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a job_extension_left_300" do
    dynometry = Dynometry.new(job_extension_left_300: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a job_extension_deficit_300" do
    dynometry = Dynometry.new(job_extension_deficit_300: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a job_flexion_right_300" do
    dynometry = Dynometry.new(job_flexion_right_300: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a job_flexion_left_300" do
    dynometry = Dynometry.new(job_flexion_left_300: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a job_flexion_deficit_300" do
    dynometry = Dynometry.new(job_flexion_deficit_300: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a fatigue_extension_right_300" do
    dynometry = Dynometry.new(fatigue_extension_right_300: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a fatigue_extension_left_300" do
    dynometry = Dynometry.new(fatigue_extension_left_300: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a fatigue_extension_deficit_300" do
    dynometry = Dynometry.new(fatigue_extension_deficit_300: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a fatigue_flexion_right_300" do
    dynometry = Dynometry.new(fatigue_flexion_right_300: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a fatigue_flexion_left_300" do
    dynometry = Dynometry.new(fatigue_flexion_left_300: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a fatigue_flexion_deficit_300" do
    dynometry = Dynometry.new(fatigue_flexion_deficit_300: nil)
    expect(dynometry).to_not be_valid
  end
   it "is not valid without a IDM_extension" do
    dynometry = Dynometry.new(IDM_extension: nil)
    expect(dynometry).to_not be_valid
  end
   it "is not valid without a IDM_flexion" do
    dynometry = Dynometry.new(IDM_flexion: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a relation_extension_right" do
    dynometry = Dynometry.new(relation_extension_right: nil)
    expect(dynometry).to_not be_valid
  end
  it "is not valid without a relation_extension_left" do
    dynometry = Dynometry.new(relation_extension_left: nil)
    expect(dynometry).to_not be_valid
  end
end