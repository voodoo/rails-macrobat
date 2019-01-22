require "application_system_test_case"

class KetosTest < ApplicationSystemTestCase
  setup do
    @keto = ketos(:one)
  end

  test "visiting the index" do
    visit ketos_url
    assert_selector "h1", text: "Ketos"
  end

  test "creating a Keto" do
    visit ketos_url
    click_on "New Keto"

    fill_in "Reading", with: @keto.reading
    fill_in "User", with: @keto.user_id
    click_on "Create Keto"

    assert_text "Keto was successfully created"
    click_on "Back"
  end

  test "updating a Keto" do
    visit ketos_url
    click_on "Edit", match: :first

    fill_in "Reading", with: @keto.reading
    fill_in "User", with: @keto.user_id
    click_on "Update Keto"

    assert_text "Keto was successfully updated"
    click_on "Back"
  end

  test "destroying a Keto" do
    visit ketos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Keto was successfully destroyed"
  end
end
