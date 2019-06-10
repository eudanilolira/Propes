require 'rails_helper'

RSpec.describe AnkleMobility, type: :model do
    
    it "is not valid without right_ankle" do
      anklemoblity = AnkleMobility.new(right_ankle: nil)
      expect(anklemoblity).to_not be_valid
    end
    it "is not valid without left_ankle" do
      anklemoblity = AnkleMobility.new(left_ankle: nil)
      expect(anklemoblity).to_not be_valid
    end
end