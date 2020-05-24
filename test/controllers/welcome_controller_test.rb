require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcome_index_url
    assert_response :success
  end

  test "should get dogslists" do
    get welcome_dogslists_url
    assert_response :success
  end

  test "should get new" do
    get welcome_new_url
    assert_response :success
  end

end
