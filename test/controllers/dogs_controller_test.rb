require 'test_helper'

class DogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dog = dogs(:one)
  end

  test "should get index" do
    get dogs_url
    assert_response :success
  end

  test "should get new" do
    get new_dog_url
    assert_response :success
  end

  test "should create dog" do
    assert_difference('Dog.count') do
      post dogs_url, params: { dog: { breed: @dog.breed, color: @dog.color, date: @dog.date, description: @dog.description, email: @dog.email, first_name: @dog.first_name, image: @dog.image, last_name: @dog.last_name, list_id: @dog.list_id, location: @dog.location, phone: @dog.phone, size: @dog.size } }
    end

    assert_redirected_to dog_url(Dog.last)
  end

  test "should show dog" do
    get dog_url(@dog)
    assert_response :success
  end

  test "should get edit" do
    get edit_dog_url(@dog)
    assert_response :success
  end

  test "should update dog" do
    patch dog_url(@dog), params: { dog: { breed: @dog.breed, color: @dog.color, date: @dog.date, description: @dog.description, email: @dog.email, first_name: @dog.first_name, image: @dog.image, last_name: @dog.last_name, list_id: @dog.list_id, location: @dog.location, phone: @dog.phone, size: @dog.size } }
    assert_redirected_to dog_url(@dog)
  end

  test "should destroy dog" do
    assert_difference('Dog.count', -1) do
      delete dog_url(@dog)
    end

    assert_redirected_to dogs_url
  end
end
