require 'test_helper'

class MillionaireControllerTest < ActionController::TestCase
  test "should get start" do
    get :start
    assert_response :success
  end

  test "should get game" do
    get :game
    assert_response :success
  end

  test "should get game_over" do
    get :game_over
    assert_response :success
  end

end
