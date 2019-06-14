require 'rails_helper'

RSpec.describe AnamnesesController, type: :controller do
  describe 'validate anamneses controller' do
    it 'create class anamneses' do
      anamneses  = AnamnesesController.new()
    end
  end
end
