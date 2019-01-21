require 'test_helper'

class PressuresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pressure = pressures(:one)
  end

  test "should get index" do
    get pressures_url
    assert_response :success
  end

  test "should get new" do
    get new_pressure_url
    assert_response :success
  end

  test "should create pressure" do
    assert_difference('Pressure.count') do
      post pressures_url, params: { pressure: { dias: @pressure.dias, pulse: @pressure.pulse, sys: @pressure.sys, user_id: @pressure.user_id } }
    end

    assert_redirected_to pressure_url(Pressure.last)
  end

  test "should show pressure" do
    get pressure_url(@pressure)
    assert_response :success
  end

  test "should get edit" do
    get edit_pressure_url(@pressure)
    assert_response :success
  end

  test "should update pressure" do
    patch pressure_url(@pressure), params: { pressure: { dias: @pressure.dias, pulse: @pressure.pulse, sys: @pressure.sys, user_id: @pressure.user_id } }
    assert_redirected_to pressure_url(@pressure)
  end

  test "should destroy pressure" do
    assert_difference('Pressure.count', -1) do
      delete pressure_url(@pressure)
    end

    assert_redirected_to pressures_url
  end
end
