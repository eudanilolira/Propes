require 'rails_helper'

RSpec.describe Anamnese, type: :model do

  it "is not valid without a main complaint" do
    anamnese = Anamnese.new(main_complaint: nil)
    expect(anamnese).to_not be_valid
  end
  it "is not valid without a history_complaint" do
    anamnese = Anamnese.new(history_complaint: nil)
    expect(anamnese).to_not be_valid
  end
  it "is not valid without a nature_complaint" do
    anamnese = Anamnese.new(nature_complaint: nil)
    expect(anamnese).to_not be_valid
  end
  it "is not valid without a history_injuries" do
    anamnese = Anamnese.new(history_injuries: nil)
    expect(anamnese).to_not be_valid
  end
  it "is not valid without a is_accompanying" do
    anamnese = Anamnese.new(is_accompanying: nil)
    expect(anamnese).to_not be_valid
  end
end