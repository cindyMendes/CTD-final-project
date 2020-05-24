require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcome_index_url
    assert_response :success
  end

  test "should get dogs" do
    get welcome_dogs_url
    assert_response :success
  end

  test "should get lists" do
    get welcome_lists_url
    assert_response :success
  end

  test "should get new" do
    get welcome_new_url
    assert_response :success
  end

end
