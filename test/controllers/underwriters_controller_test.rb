require 'test_helper'

class UnderwritersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @underwriter = underwriters(:one)
  end

  test "should get index" do
    get underwriters_url
    assert_response :success
  end

  test "should get new" do
    get new_underwriter_url
    assert_response :success
  end

  test "should create underwriter" do
    assert_difference('Underwriter.count') do
      post underwriters_url, params: { underwriter: { company_id: @underwriter.company_id, email: @underwriter.email, first_name: @underwriter.first_name, last_name: @underwriter.last_name } }
    end

    assert_redirected_to underwriter_url(Underwriter.last)
  end

  test "should show underwriter" do
    get underwriter_url(@underwriter)
    assert_response :success
  end

  test "should get edit" do
    get edit_underwriter_url(@underwriter)
    assert_response :success
  end

  test "should update underwriter" do
    patch underwriter_url(@underwriter), params: { underwriter: { company_id: @underwriter.company_id, email: @underwriter.email, first_name: @underwriter.first_name, last_name: @underwriter.last_name } }
    assert_redirected_to underwriter_url(@underwriter)
  end

  test "should destroy underwriter" do
    assert_difference('Underwriter.count', -1) do
      delete underwriter_url(@underwriter)
    end

    assert_redirected_to underwriters_url
  end
end
