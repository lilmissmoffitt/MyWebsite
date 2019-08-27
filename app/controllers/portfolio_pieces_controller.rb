class PortfolioPiecesController < ApplicationController
  before_action :set_portfolio_piece, only: [:show, :edit, :update, :destroy]

  # GET /portfolio_pieces
  # GET /portfolio_pieces.json
  def index
    @portfolio_pieces = PortfolioPiece.all
  end

  # GET /portfolio_pieces/1
  # GET /portfolio_pieces/1.json
  def show
  end

  # GET /portfolio_pieces/new
  def new
    @portfolio_piece = PortfolioPiece.new
  end

  # GET /portfolio_pieces/1/edit
  def edit
  end

  # POST /portfolio_pieces
  # POST /portfolio_pieces.json
  def create
    @portfolio_piece = PortfolioPiece.new(portfolio_piece_params)

    respond_to do |format|
      if @portfolio_piece.save
        format.html { redirect_to @portfolio_piece, notice: 'Portfolio piece was successfully created.' }
        format.json { render :show, status: :created, location: @portfolio_piece }
      else
        format.html { render :new }
        format.json { render json: @portfolio_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /portfolio_pieces/1
  # PATCH/PUT /portfolio_pieces/1.json
  def update
    respond_to do |format|
      if @portfolio_piece.update(portfolio_piece_params)
        format.html { redirect_to @portfolio_piece, notice: 'Portfolio piece was successfully updated.' }
        format.json { render :show, status: :ok, location: @portfolio_piece }
      else
        format.html { render :edit }
        format.json { render json: @portfolio_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portfolio_pieces/1
  # DELETE /portfolio_pieces/1.json
  def destroy
    @portfolio_piece.destroy
    respond_to do |format|
      format.html { redirect_to portfolio_pieces_url, notice: 'Portfolio piece was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio_piece
      @portfolio_piece = PortfolioPiece.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def portfolio_piece_params
      params.require(:portfolio_piece).permit(:title, :body)
    end
end
