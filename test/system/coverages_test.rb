require "application_system_test_case"

class CoveragesTest < ApplicationSystemTestCase
  setup do
    @coverage = coverages(:one)
  end

  test "visiting the index" do
    visit coverages_url
    assert_selector "h1", text: "Coverages"
  end

  test "creating a Coverage" do
    visit coverages_url
    click_on "New Coverage"

    fill_in "Coverage type", with: @coverage.coverage_type
    click_on "Create Coverage"

    assert_text "Coverage was successfully created"
    click_on "Back"
  end

  test "updating a Coverage" do
    visit coverages_url
    click_on "Edit", match: :first

    fill_in "Coverage type", with: @coverage.coverage_type
    click_on "Update Coverage"

    assert_text "Coverage was successfully updated"
    click_on "Back"
  end

  test "destroying a Coverage" do
    visit coverages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coverage was successfully destroyed"
  end
end
