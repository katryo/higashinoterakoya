require 'test_helper'

class RaikoQuestionsControllerTest < ActionController::TestCase
  setup do
    @raiko_question = raiko_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:raiko_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create raiko_question" do
    assert_difference('RaikoQuestion.count') do
      post :create, raiko_question: { query: @raiko_question.query }
    end

    assert_redirected_to raiko_question_path(assigns(:raiko_question))
  end

  test "should show raiko_question" do
    get :show, id: @raiko_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @raiko_question
    assert_response :success
  end

  test "should update raiko_question" do
    put :update, id: @raiko_question, raiko_question: { query: @raiko_question.query }
    assert_redirected_to raiko_question_path(assigns(:raiko_question))
  end

  test "should destroy raiko_question" do
    assert_difference('RaikoQuestion.count', -1) do
      delete :destroy, id: @raiko_question
    end

    assert_redirected_to raiko_questions_path
  end
end
