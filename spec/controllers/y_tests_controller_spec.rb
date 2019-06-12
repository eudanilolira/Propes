require 'rails_helper'

RSpec.describe YTestsController, type: :controller do
  describe 'valid test' do
    it 'create class Ytest' do
      test = YTestsController.new()
    end
  end
end


