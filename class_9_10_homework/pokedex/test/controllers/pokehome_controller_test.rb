require 'test_helper'

class PokehomeControllerTest < ActionController::TestCase
  test "should get pokeindex" do
    get :pokeindex
    assert_response :success
  end

end
