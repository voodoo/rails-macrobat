require 'test_helper'

class KetosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @keto = ketos(:one)
  end

  test "should get index" do
    get ketos_url
    assert_response :success
  end

  test "should get new" do
    get new_keto_url
    assert_response :success
  end

  test "should create keto" do
    assert_difference('Keto.count') do
      post ketos_url, params: { keto: { reading: @keto.reading, user_id: @keto.user_id } }
    end

    assert_redirected_to keto_url(Keto.last)
  end

  test "should show keto" do
    get keto_url(@keto)
    assert_response :success
  end

  test "should get edit" do
    get edit_keto_url(@keto)
    assert_response :success
  end

  test "should update keto" do
    patch keto_url(@keto), params: { keto: { reading: @keto.reading, user_id: @keto.user_id } }
    assert_redirected_to keto_url(@keto)
  end

  test "should destroy keto" do
    assert_difference('Keto.count', -1) do
      delete keto_url(@keto)
    end

    assert_redirected_to ketos_url
  end
end
