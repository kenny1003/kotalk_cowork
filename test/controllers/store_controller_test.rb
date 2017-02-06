require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get store_index" do
    get :store_index
    assert_response :success
  end

end
