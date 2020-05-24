require "application_system_test_case"

class DogsTest < ApplicationSystemTestCase
  setup do
    @dog = dogs(:one)
  end

  test "visiting the index" do
    visit dogs_url
    assert_selector "h1", text: "Dogs"
  end

  test "creating a Dog" do
    visit dogs_url
    click_on "New Dog"

    fill_in "Breed", with: @dog.breed
    fill_in "Color", with: @dog.color
    fill_in "Date", with: @dog.date
    fill_in "Description", with: @dog.description
    fill_in "Email", with: @dog.email
    fill_in "First name", with: @dog.first_name
    fill_in "Image", with: @dog.image
    fill_in "Last name", with: @dog.last_name
    fill_in "List", with: @dog.list_id
    fill_in "Location", with: @dog.location
    fill_in "Phone", with: @dog.phone
    fill_in "Size", with: @dog.size
    click_on "Create Dog"

    assert_text "Dog was successfully created"
    click_on "Back"
  end

  test "updating a Dog" do
    visit dogs_url
    click_on "Edit", match: :first

    fill_in "Breed", with: @dog.breed
    fill_in "Color", with: @dog.color
    fill_in "Date", with: @dog.date
    fill_in "Description", with: @dog.description
    fill_in "Email", with: @dog.email
    fill_in "First name", with: @dog.first_name
    fill_in "Image", with: @dog.image
    fill_in "Last name", with: @dog.last_name
    fill_in "List", with: @dog.list_id
    fill_in "Location", with: @dog.location
    fill_in "Phone", with: @dog.phone
    fill_in "Size", with: @dog.size
    click_on "Update Dog"

    assert_text "Dog was successfully updated"
    click_on "Back"
  end

  test "destroying a Dog" do
    visit dogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dog was successfully destroyed"
  end
end
