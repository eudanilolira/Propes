require 'test_helper'

class WelcomesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get welcomes_new_url
    assert_response :success
  end

end
