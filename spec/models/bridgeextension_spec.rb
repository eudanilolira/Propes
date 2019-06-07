require 'rails_helper'

RSpec.describe BridgeExtension, type: :model do

  it "is not valid without a right_side" do
    bridgeextension = BridgeExtension.new(right_side: nil)
    expect(bridgeextension).to_not be_valid
  end
  it "is not valid without a left_side" do
    bridgeextension = BridgeExtension.new(left_side: nil)
    expect(bridgeextension).to_not be_valid
  end
end