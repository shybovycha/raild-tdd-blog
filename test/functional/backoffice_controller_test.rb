require 'test_helper'

class BackofficeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get edit_post" do
    get :edit_post
    assert_response :success
  end

  test "should get delete_post" do
    get :delete_post
    assert_response :success
  end

end
