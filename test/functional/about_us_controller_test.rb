require 'test_helper'

class AboutUsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
