require 'test_helper'

class SpecialContentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get raiko_question" do
    get :raiko_question
    assert_response :success
  end

end
