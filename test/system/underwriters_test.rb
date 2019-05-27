require "application_system_test_case"

class UnderwritersTest < ApplicationSystemTestCase
  setup do
    @underwriter = underwriters(:one)
  end

  test "visiting the index" do
    visit underwriters_url
    assert_selector "h1", text: "Underwriters"
  end

  test "creating a Underwriter" do
    visit underwriters_url
    click_on "New Underwriter"

    fill_in "Company", with: @underwriter.company_id
    fill_in "Email", with: @underwriter.email
    fill_in "First name", with: @underwriter.first_name
    fill_in "Last name", with: @underwriter.last_name
    click_on "Create Underwriter"

    assert_text "Underwriter was successfully created"
    click_on "Back"
  end

  test "updating a Underwriter" do
    visit underwriters_url
    click_on "Edit", match: :first

    fill_in "Company", with: @underwriter.company_id
    fill_in "Email", with: @underwriter.email
    fill_in "First name", with: @underwriter.first_name
    fill_in "Last name", with: @underwriter.last_name
    click_on "Update Underwriter"

    assert_text "Underwriter was successfully updated"
    click_on "Back"
  end

  test "destroying a Underwriter" do
    visit underwriters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Underwriter was successfully destroyed"
  end
end
