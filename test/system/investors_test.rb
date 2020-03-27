require "application_system_test_case"

class InvestorsTest < ApplicationSystemTestCase
  setup do
    @investor = investors(:one)
  end

  test "visiting the index" do
    visit investors_url
    assert_selector "h1", text: "Investors"
  end

  test "creating a Investor" do
    visit investors_url
    click_on "New Investor"

    fill_in "Dob", with: @investor.dob
    fill_in "First name", with: @investor.first_name
    fill_in "Last name", with: @investor.last_name
    fill_in "Phone", with: @investor.phone
    fill_in "State address", with: @investor.state_address
    fill_in "Street address", with: @investor.street_address
    fill_in "Zip code", with: @investor.zip_code
    click_on "Create Investor"

    assert_text "Investor was successfully created"
    click_on "Back"
  end

  test "updating a Investor" do
    visit investors_url
    click_on "Edit", match: :first

    fill_in "Dob", with: @investor.dob
    fill_in "First name", with: @investor.first_name
    fill_in "Last name", with: @investor.last_name
    fill_in "Phone", with: @investor.phone
    fill_in "State address", with: @investor.state_address
    fill_in "Street address", with: @investor.street_address
    fill_in "Zip code", with: @investor.zip_code
    click_on "Update Investor"

    assert_text "Investor was successfully updated"
    click_on "Back"
  end

  test "destroying a Investor" do
    visit investors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Investor was successfully destroyed"
  end
end
