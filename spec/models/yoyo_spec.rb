require 'rails_helper'

RSpec.describe YoYo, type: :model do

  it "is not valid without a distance" do
    yoyo = YoYo.new(distance: nil)
    expect(yoyo).to_not be_valid
  end
end