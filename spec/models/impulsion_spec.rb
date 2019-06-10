require 'rails_helper'

RSpec.describe Impulsion, type: :model do

  it "is not valid without a distance" do
    impulsion = Impulsion.new(distance: nil)
    expect(impulsion).to_not be_valid
  end
  it "is not valid without a P" do
    impulsion = Impulsion.new(P)
    expect(impulsion).to_not be_valid
  end
end