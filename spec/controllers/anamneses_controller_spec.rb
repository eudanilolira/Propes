require 'rails_helper'

RSpec.describe AnamnesesController, type: :controller do
let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
}
  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
}
  let(:valid_session) { {} }

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_successful
    end
end
end
