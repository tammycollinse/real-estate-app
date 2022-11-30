require "application_system_test_case"

class ListingsTest < ApplicationSystemTestCase
  setup do
    @listing = listings(:one)
  end

  test "visiting the index" do
    visit listings_url
    assert_selector "h1", text: "Listings"
  end

  test "should create listing" do
    visit listings_url
    click_on "New listing"

    fill_in "Address", with: @listing.address
    fill_in "Bath", with: @listing.bath
    fill_in "Bed", with: @listing.bed
    fill_in "Home description", with: @listing.home_description
    fill_in "Home type", with: @listing.home_type
    fill_in "Images", with: @listing.images
    fill_in "Location", with: @listing.location
    fill_in "Price", with: @listing.price
    fill_in "Sq feet", with: @listing.sq_feet
    fill_in "Title", with: @listing.title
    click_on "Create Listing"

    assert_text "Listing was successfully created"
    click_on "Back"
  end

  test "should update Listing" do
    visit listing_url(@listing)
    click_on "Edit this listing", match: :first

    fill_in "Address", with: @listing.address
    fill_in "Bath", with: @listing.bath
    fill_in "Bed", with: @listing.bed
    fill_in "Home description", with: @listing.home_description
    fill_in "Home type", with: @listing.home_type
    fill_in "Images", with: @listing.images
    fill_in "Location", with: @listing.location
    fill_in "Price", with: @listing.price
    fill_in "Sq feet", with: @listing.sq_feet
    fill_in "Title", with: @listing.title
    click_on "Update Listing"

    assert_text "Listing was successfully updated"
    click_on "Back"
  end

  test "should destroy Listing" do
    visit listing_url(@listing)
    click_on "Destroy this listing", match: :first

    assert_text "Listing was successfully destroyed"
  end
end
