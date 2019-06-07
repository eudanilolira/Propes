require 'rails_helper'

RSpec.describe CutaneousFold, type: :model do

  it "is not valid without tricipital" do
    cutaneousfold = CutaneousFold.new(tricipital: nil)
    expect(cutaneousfold).to_not be_valid
  end
  it "is not valid without subescapular" do
    cutaneousfold = CutaneousFold.new(subescapular: nil)
    expect(cutaneousfold).to_not be_valid
  end
  it "is not valid without average_axilar" do
    cutaneousfold = CutaneousFold.new(average_axilar: nil)
    expect(cutaneousfold).to_not be_valid
  end
  it "is not valid without breastplate" do
    cutaneousfold = CutaneousFold.new(breastplate: nil)
    expect(cutaneousfold).to_not be_valid
  end
  it "is not valid without supra_ilcia" do
    cutaneousfold = CutaneousFold.new(supra_ilcia: nil)
    expect(cutaneousfold).to_not be_valid
  end
   it "is not valid without abdomen" do
    cutaneousfold = CutaneousFold.new(abdomen: nil)
    expect(cutaneousfold).to_not be_valid
  end
  it "is not valid without thigh" do
    cutaneousfold = CutaneousFold.new(thigh: nil)
    expect(cutaneousfold).to_not be_valid
  end
  it "is not valid without result" do
    cutaneousfold = CutaneousFold.new(result: nil)
    expect(cutaneousfold).to_not be_valid
  end
  it "is not valid without bone_mass_BE" do
    cutaneousfold = CutaneousFold.new(bone_mass_BE: nil)
    expect(cutaneousfold).to_not be_valid
  end
  it "is not valid without bone_mass_BU" do
    cutaneousfold = CutaneousFold.new(bone_mass_BU: nil)
    expect(cutaneousfold).to_not be_valid
  end
  it "is not valid without bone_mass_BF" do
    cutaneousfold = CutaneousFold.new(bone_mass_BF: nil)
    expect(cutaneousfold).to_not be_valid
  end
  it "is not valid without bone_mass_BM" do
    cutaneousfold = CutaneousFold.new(bone_mass_BM: nil)
    expect(cutaneousfold).to_not be_valid
  end
   it "is not valid without bm_Result" do
    cutaneousfold = CutaneousFold.new(bm_Result: nil)
    expect(cutaneousfold).to_not be_valid
  end
  it "is not valid without residual_mass" do
    cutaneousfold = CutaneousFold.new(residual_mass: nil)
    expect(cutaneousfold).to_not be_valid
  end
  it "is not valid without fat_mass" do
    cutaneousfold = CutaneousFold.new(fat_mass: nil)
    expect(cutaneousfold).to_not be_valid
  end
   it "is not valid without muscle_mass" do
    cutaneousfold = CutaneousFold.new(muscle_mass: nil)
    expect(cutaneousfold).to_not be_valid
  end
  it "is not valid without lean_mass" do
    cutaneousfold = CutaneousFold.new(lean_mass: nil)
    expect(cutaneousfold).to_not be_valid
  end
end