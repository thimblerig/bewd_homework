require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get yodafied" do
    get :yodafied
    assert_response :success
  end

end
