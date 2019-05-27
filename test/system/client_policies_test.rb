require "application_system_test_case"

class ClientPoliciesTest < ApplicationSystemTestCase
  setup do
    @client_policy = client_policies(:one)
  end

  test "visiting the index" do
    visit client_policies_url
    assert_selector "h1", text: "Client Policies"
  end

  test "creating a Client policy" do
    visit client_policies_url
    click_on "New Client Policy"

    fill_in "Client name", with: @client_policy.client_name_id
    fill_in "Coverage type", with: @client_policy.coverage_type_id
    check "Did client confirmed" if @client_policy.did_client_confirmed
    check "Did confirm to underwriter" if @client_policy.did_confirm_to_underwriter
    check "Did underwriter confirm" if @client_policy.did_underwriter_confirm
    fill_in "Insurer", with: @client_policy.insurer_id
    check "Loss runs reqd" if @client_policy.loss_runs_reqd
    check "Quote recieved" if @client_policy.quote_recieved
    fill_in "Quote recieved date", with: @client_policy.quote_recieved_date
    fill_in "Renewal date", with: @client_policy.renewal_date
    fill_in "Underwriter", with: @client_policy.underwriter_id
    click_on "Create Client policy"

    assert_text "Client policy was successfully created"
    click_on "Back"
  end

  test "updating a Client policy" do
    visit client_policies_url
    click_on "Edit", match: :first

    fill_in "Client name", with: @client_policy.client_name_id
    fill_in "Coverage type", with: @client_policy.coverage_type_id
    check "Did client confirmed" if @client_policy.did_client_confirmed
    check "Did confirm to underwriter" if @client_policy.did_confirm_to_underwriter
    check "Did underwriter confirm" if @client_policy.did_underwriter_confirm
    fill_in "Insurer", with: @client_policy.insurer_id
    check "Loss runs reqd" if @client_policy.loss_runs_reqd
    check "Quote recieved" if @client_policy.quote_recieved
    fill_in "Quote recieved date", with: @client_policy.quote_recieved_date
    fill_in "Renewal date", with: @client_policy.renewal_date
    fill_in "Underwriter", with: @client_policy.underwriter_id
    click_on "Update Client policy"

    assert_text "Client policy was successfully updated"
    click_on "Back"
  end

  test "destroying a Client policy" do
    visit client_policies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client policy was successfully destroyed"
  end
end
