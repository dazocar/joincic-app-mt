require 'test_helper'

class JoincicsControllerTest < ActionController::TestCase
  test "should get show_schools" do
    get :show_schools
    assert_response :success
  end

end
