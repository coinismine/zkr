require "application_system_test_case"

class ZikrsTest < ApplicationSystemTestCase
  setup do
    @zikr = zikrs(:one)
  end

  test "visiting the index" do
    visit zikrs_url
    assert_selector "h1", text: "Zikrs"
  end

  test "creating a Zikr" do
    visit zikrs_url
    click_on "New Zikr"

    fill_in "Astagfaar", with: @zikr.astagfaar
    fill_in "City", with: @zikr.city
    fill_in "Country", with: @zikr.country
    fill_in "Date", with: @zikr.date
    fill_in "Durud Sharif", with: @zikr.durud_sharif
    fill_in "Kalma Tayyaba", with: @zikr.kalma_tayyaba
    fill_in "Name", with: @zikr.name
    fill_in "Phone", with: @zikr.phone
    click_on "کلک کریں"

    assert_text "Zikr was successfully created"
    click_on "Back"
  end

  test "updating a Zikr" do
    visit zikrs_url
    click_on "Edit", match: :first

    fill_in "Astagfaar", with: @zikr.astagfaar
    fill_in "City", with: @zikr.city
    fill_in "Country", with: @zikr.country
    fill_in "Date", with: @zikr.date
    fill_in "Durud Sharif", with: @zikr.durud_sharif
    fill_in "Kalma Tayyaba", with: @zikr.kalma_tayyaba
    fill_in "Name", with: @zikr.name
    fill_in "Phone", with: @zikr.phone
    click_on "Update Zikr"

    assert_text "Zikr was successfully updated"
    click_on "Back"
  end

  test "destroying a Zikr" do
    visit zikrs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Zikr was successfully destroyed"
  end
end
