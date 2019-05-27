require 'test_helper'

class InsurersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @insurer = insurers(:one)
  end

  test "should get index" do
    get insurers_url
    assert_response :success
  end

  test "should get new" do
    get new_insurer_url
    assert_response :success
  end

  test "should create insurer" do
    assert_difference('Insurer.count') do
      post insurers_url, params: { insurer: { name: @insurer.name } }
    end

    assert_redirected_to insurer_url(Insurer.last)
  end

  test "should show insurer" do
    get insurer_url(@insurer)
    assert_response :success
  end

  test "should get edit" do
    get edit_insurer_url(@insurer)
    assert_response :success
  end

  test "should update insurer" do
    patch insurer_url(@insurer), params: { insurer: { name: @insurer.name } }
    assert_redirected_to insurer_url(@insurer)
  end

  test "should destroy insurer" do
    assert_difference('Insurer.count', -1) do
      delete insurer_url(@insurer)
    end

    assert_redirected_to insurers_url
  end
end
