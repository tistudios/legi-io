require "application_system_test_case"

class AbyencesTest < ApplicationSystemTestCase
  setup do
    @abyence = abyences(:one)
  end

  test "visiting the index" do
    visit abyences_url
    assert_selector "h1", text: "Abyences"
  end

  test "creating a Abyence" do
    visit abyences_url
    click_on "New Abyence"

    fill_in "Client", with: @abyence.Client_id
    fill_in "Insurer", with: @abyence.insurer_id
    fill_in "Reminder content", with: @abyence.reminder_content
    fill_in "Reminder date", with: @abyence.reminder_date
    fill_in "Renewal date", with: @abyence.renewal_date
    fill_in "Underwriter", with: @abyence.underwriter_id
    click_on "Create Abyence"

    assert_text "Abyence was successfully created"
    click_on "Back"
  end

  test "updating a Abyence" do
    visit abyences_url
    click_on "Edit", match: :first

    fill_in "Client", with: @abyence.Client_id
    fill_in "Insurer", with: @abyence.insurer_id
    fill_in "Reminder content", with: @abyence.reminder_content
    fill_in "Reminder date", with: @abyence.reminder_date
    fill_in "Renewal date", with: @abyence.renewal_date
    fill_in "Underwriter", with: @abyence.underwriter_id
    click_on "Update Abyence"

    assert_text "Abyence was successfully updated"
    click_on "Back"
  end

  test "destroying a Abyence" do
    visit abyences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Abyence was successfully destroyed"
  end
end
