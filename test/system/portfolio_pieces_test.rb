require "application_system_test_case"

class PortfolioPiecesTest < ApplicationSystemTestCase
  setup do
    @portfolio_piece = portfolio_pieces(:one)
  end

  test "visiting the index" do
    visit portfolio_pieces_url
    assert_selector "h1", text: "Portfolio Pieces"
  end

  test "creating a Portfolio piece" do
    visit portfolio_pieces_url
    click_on "New Portfolio Piece"

    fill_in "Body", with: @portfolio_piece.body
    fill_in "Title", with: @portfolio_piece.title
    click_on "Create Portfolio piece"

    assert_text "Portfolio piece was successfully created"
    click_on "Back"
  end

  test "updating a Portfolio piece" do
    visit portfolio_pieces_url
    click_on "Edit", match: :first

    fill_in "Body", with: @portfolio_piece.body
    fill_in "Title", with: @portfolio_piece.title
    click_on "Update Portfolio piece"

    assert_text "Portfolio piece was successfully updated"
    click_on "Back"
  end

  test "destroying a Portfolio piece" do
    visit portfolio_pieces_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Portfolio piece was successfully destroyed"
  end
end
