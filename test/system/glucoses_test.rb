require "application_system_test_case"

class GlucosesTest < ApplicationSystemTestCase
  setup do
    @glucose = glucoses(:one)
  end

  test "visiting the index" do
    visit glucoses_url
    assert_selector "h1", text: "Glucoses"
  end

  test "creating a Glucose" do
    visit glucoses_url
    click_on "New Glucose"

    fill_in "Belongs to", with: @glucose.belongs_to
    fill_in "Reading", with: @glucose.reading
    click_on "Create Glucose"

    assert_text "Glucose was successfully created"
    click_on "Back"
  end

  test "updating a Glucose" do
    visit glucoses_url
    click_on "Edit", match: :first

    fill_in "Belongs to", with: @glucose.belongs_to
    fill_in "Reading", with: @glucose.reading
    click_on "Update Glucose"

    assert_text "Glucose was successfully updated"
    click_on "Back"
  end

  test "destroying a Glucose" do
    visit glucoses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Glucose was successfully destroyed"
  end
end
