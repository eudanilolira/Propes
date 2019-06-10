require 'rails_helper'

RSpec.describe Questionary, type: :model do

  it "is not valid without question1a" do
    questionary = Questionary.new(question1a: nil)
    expect(questionary).to_not be_valid
  end
  it "is not valid without question1b" do
    questionary = Questionary.new(question1b: nil)
    expect(questionary).to_not be_valid
  end
  it "is not valid without question2a" do
    questionary = Questionary.new(question2a: nil)
    expect(questionary).to_not be_valid
  end
  it "is not valid without question2b" do
    questionary = Questionary.new(question2b: nil)
    expect(questionary).to_not be_valid
  end
  it "is not valid without question3a" do
    questionary = Questionary.new(question3a: nil)
    expect(questionary).to_not be_valid
  end
  it "is not valid without question3b" do
    questionary = Questionary.new(question3b: nil)
    expect(questionary).to_not be_valid
  end
  it "is not valid without question4a" do
    questionary = Questionary.new(question4a: nil)
    expect(questionary).to_not be_valid
  end
  it "is not valid without question4b" do
    questionary = Questionary.new(question4b: nil)
    expect(questionary).to_not be_valid
  end
end