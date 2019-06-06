require 'test_helper'

RSpec.describe User, type: :model do
    it "is invalid name lenght higher than 60"
      expect(User.create(name: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", password: "123", email: "teste@gmail.com", cpf: "15164384959")).to_not be_valid
end
