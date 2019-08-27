require 'test_helper'

class PortfolioPiecesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @portfolio_piece = portfolio_pieces(:one)
  end

  test "should get index" do
    get portfolio_pieces_url
    assert_response :success
  end

  test "should get new" do
    get new_portfolio_piece_url
    assert_response :success
  end

  test "should create portfolio_piece" do
    assert_difference('PortfolioPiece.count') do
      post portfolio_pieces_url, params: { portfolio_piece: { body: @portfolio_piece.body, title: @portfolio_piece.title } }
    end

    assert_redirected_to portfolio_piece_url(PortfolioPiece.last)
  end

  test "should show portfolio_piece" do
    get portfolio_piece_url(@portfolio_piece)
    assert_response :success
  end

  test "should get edit" do
    get edit_portfolio_piece_url(@portfolio_piece)
    assert_response :success
  end

  test "should update portfolio_piece" do
    patch portfolio_piece_url(@portfolio_piece), params: { portfolio_piece: { body: @portfolio_piece.body, title: @portfolio_piece.title } }
    assert_redirected_to portfolio_piece_url(@portfolio_piece)
  end

  test "should destroy portfolio_piece" do
    assert_difference('PortfolioPiece.count', -1) do
      delete portfolio_piece_url(@portfolio_piece)
    end

    assert_redirected_to portfolio_pieces_url
  end
end
