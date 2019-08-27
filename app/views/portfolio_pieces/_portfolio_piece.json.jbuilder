json.extract! portfolio_piece, :id, :title, :body, :created_at, :updated_at
json.url portfolio_piece_url(portfolio_piece, format: :json)
