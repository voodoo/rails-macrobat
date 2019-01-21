require "application_system_test_case"

class PressuresTest < ApplicationSystemTestCase
  setup do
    @pressure = pressures(:one)
  end

  test "visiting the index" do
    visit pressures_url
    assert_selector "h1", text: "Pressures"
  end

  test "creating a Pressure" do
    visit pressures_url
    click_on "New Pressure"

    fill_in "Dias", with: @pressure.dias
    fill_in "Pulse", with: @pressure.pulse
    fill_in "Sys", with: @pressure.sys
    fill_in "User", with: @pressure.user_id
    click_on "Create Pressure"

    assert_text "Pressure was successfully created"
    click_on "Back"
  end

  test "updating a Pressure" do
    visit pressures_url
    click_on "Edit", match: :first

    fill_in "Dias", with: @pressure.dias
    fill_in "Pulse", with: @pressure.pulse
    fill_in "Sys", with: @pressure.sys
    fill_in "User", with: @pressure.user_id
    click_on "Update Pressure"

    assert_text "Pressure was successfully updated"
    click_on "Back"
  end

  test "destroying a Pressure" do
    visit pressures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pressure was successfully destroyed"
  end
end
