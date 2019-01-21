require 'test_helper'

class GlucosesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @glucose = glucoses(:one)
  end

  test "should get index" do
    get glucoses_url
    assert_response :success
  end

  test "should get new" do
    get new_glucose_url
    assert_response :success
  end

  test "should create glucose" do
    assert_difference('Glucose.count') do
      post glucoses_url, params: { glucose: { belongs_to: @glucose.belongs_to, reading: @glucose.reading } }
    end

    assert_redirected_to glucose_url(Glucose.last)
  end

  test "should show glucose" do
    get glucose_url(@glucose)
    assert_response :success
  end

  test "should get edit" do
    get edit_glucose_url(@glucose)
    assert_response :success
  end

  test "should update glucose" do
    patch glucose_url(@glucose), params: { glucose: { belongs_to: @glucose.belongs_to, reading: @glucose.reading } }
    assert_redirected_to glucose_url(@glucose)
  end

  test "should destroy glucose" do
    assert_difference('Glucose.count', -1) do
      delete glucose_url(@glucose)
    end

    assert_redirected_to glucoses_url
  end
end
