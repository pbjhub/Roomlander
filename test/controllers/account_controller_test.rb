require 'test_helper'

class AccountControllerTest < ActionController::TestCase
  test "should get personal" do
    get :personal
    assert_response :success
  end

end
