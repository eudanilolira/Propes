Require 'rails_helper'

RSpec.describe User,type: :model do
  context "Validade user" do
    it "User Valido?" do
      user=User.new
      user.name = "Lima"
      user.password = "abcd2"
      user.email = "dwas@dwadw.com"
      
      expect(user.valid?).to be_truthy
    end
    
    it "User Valido email nulo" do
      user= User.new
      user.name = "Lima"
      user.password = "abcd2"
      user.email = nil
      
      expect(user.valid?).to be_truthy
    end
    
    it "User Valido nome nulo" do
      user= User.new
      user.name = nil
      user.password = "abcd2"
      user.email = "dwas@dwadw.com"
      
      expect(user.valid?).to be_truthy
    end
  
    it "User Valido senha nula" do
      user= User.new
      user.name = "Lima"
      user.password = nil
      user.email = "dwas@dwadw.com"
      
      expect(user.valid?).to be_truthy
    end
  end
end