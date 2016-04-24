require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get hello_world" do
    get :hello_world
    assert_response :success
  end

end
