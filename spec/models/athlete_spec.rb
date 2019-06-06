require 'rails_helper'

RSpec.describe Athlete, type: :model do
  it "is not valid without a name" do
    athlete = Athlete.new(name: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a cpf" do
    athlete = Athlete.new(cpf: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a date_birth" do
    athlete = Athlete.new(date_birth: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a age" do
    athlete = Athlete.new(age: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a gender" do
    athlete = Athlete.new(gender: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a gender" do
    athlete = Athlete.new(gender: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a civil_status" do
    athlete = Athlete.new(civil_status: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a degree_education" do
    athlete = Athlete.new(degree_education: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a profession" do
    athlete = Athlete.new(profession: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a address" do
    athlete = Athlete.new(address: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a city" do
    athlete = Athlete.new(city: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a neighborhood" do
    athlete = Athlete.new(neighborhood: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a state" do
    athlete = Athlete.new(state: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a cep" do
    athlete = Athlete.new(cep: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a modality" do
    athlete = Athlete.new(modality: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a position" do
    athlete = Athlete.new(position: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a dum" do
    athlete = Athlete.new(dum: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a dlm" do
    athlete = Athlete.new(dlm: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a smoker" do
    athlete = Athlete.new(smoker: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a alcoholism" do
    athlete = Athlete.new(alcoholism: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a sah" do
    athlete = Athlete.new(sah: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a diabetes" do
    athlete = Athlete.new(diabetes: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a cardio_deseases" do
    athlete = Athlete.new(cardio_deseases: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a exercise_practice" do
    athlete = Athlete.new(exercise_practice: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a fami_alcoholism" do
    athlete = Athlete.new(fami_alcoholism: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a fami_sah" do
    athlete = Athlete.new(fami_sah: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a fami_diabetes" do
    athlete = Athlete.new(fami_diabetes: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a fami_cardio" do
    athlete = Athlete.new(fami_cardio: nil)
    expect(athlete).to_not be_valid
  end
  
  it "is not valid without a others" do
    athlete = Athlete.new(others: nil)
    expect(athlete).to_not be_valid
  end
  
end
