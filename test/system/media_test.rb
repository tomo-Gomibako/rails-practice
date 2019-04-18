require "application_system_test_case"

class MediaTest < ApplicationSystemTestCase
  setup do
    @medium = media(:one)
  end

  test "visiting the index" do
    visit media_url
    assert_selector "h1", text: "Media"
  end

  test "creating a Medium" do
    visit media_url
    click_on "New Medium"

    fill_in "Discription", with: @medium.discription
    fill_in "Title", with: @medium.title
    fill_in "Url", with: @medium.url
    fill_in "Url large", with: @medium.url_large
    fill_in "Url medium", with: @medium.url_medium
    fill_in "Url small", with: @medium.url_small
    click_on "Create Medium"

    assert_text "Medium was successfully created"
    click_on "Back"
  end

  test "updating a Medium" do
    visit media_url
    click_on "Edit", match: :first

    fill_in "Discription", with: @medium.discription
    fill_in "Title", with: @medium.title
    fill_in "Url", with: @medium.url
    fill_in "Url large", with: @medium.url_large
    fill_in "Url medium", with: @medium.url_medium
    fill_in "Url small", with: @medium.url_small
    click_on "Update Medium"

    assert_text "Medium was successfully updated"
    click_on "Back"
  end

  test "destroying a Medium" do
    visit media_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medium was successfully destroyed"
  end
end
