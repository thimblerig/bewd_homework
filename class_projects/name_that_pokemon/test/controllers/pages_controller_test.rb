require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get correct" do
    get :correct
    assert_response :success
  end

  test "should get incorrect" do
    get :incorrect
    assert_response :success
  end

end
