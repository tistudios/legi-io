require 'test_helper'

class ClientPoliciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_policy = client_policies(:one)
  end

  test "should get index" do
    get client_policies_url
    assert_response :success
  end

  test "should get new" do
    get new_client_policy_url
    assert_response :success
  end

  test "should create client_policy" do
    assert_difference('ClientPolicy.count') do
      post client_policies_url, params: { client_policy: { client_name_id: @client_policy.client_name_id, coverage_type_id: @client_policy.coverage_type_id, did_client_confirmed: @client_policy.did_client_confirmed, did_confirm_to_underwriter: @client_policy.did_confirm_to_underwriter, did_underwriter_confirm: @client_policy.did_underwriter_confirm, insurer_id: @client_policy.insurer_id, loss_runs_reqd: @client_policy.loss_runs_reqd, quote_recieved: @client_policy.quote_recieved, quote_recieved_date: @client_policy.quote_recieved_date, renewal_date: @client_policy.renewal_date, underwriter_id: @client_policy.underwriter_id } }
    end

    assert_redirected_to client_policy_url(ClientPolicy.last)
  end

  test "should show client_policy" do
    get client_policy_url(@client_policy)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_policy_url(@client_policy)
    assert_response :success
  end

  test "should update client_policy" do
    patch client_policy_url(@client_policy), params: { client_policy: { client_name_id: @client_policy.client_name_id, coverage_type_id: @client_policy.coverage_type_id, did_client_confirmed: @client_policy.did_client_confirmed, did_confirm_to_underwriter: @client_policy.did_confirm_to_underwriter, did_underwriter_confirm: @client_policy.did_underwriter_confirm, insurer_id: @client_policy.insurer_id, loss_runs_reqd: @client_policy.loss_runs_reqd, quote_recieved: @client_policy.quote_recieved, quote_recieved_date: @client_policy.quote_recieved_date, renewal_date: @client_policy.renewal_date, underwriter_id: @client_policy.underwriter_id } }
    assert_redirected_to client_policy_url(@client_policy)
  end

  test "should destroy client_policy" do
    assert_difference('ClientPolicy.count', -1) do
      delete client_policy_url(@client_policy)
    end

    assert_redirected_to client_policies_url
  end
end
