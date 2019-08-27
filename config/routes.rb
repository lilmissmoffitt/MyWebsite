Rails.application.routes.draw do
  resources :portfolio_pieces
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    # get 'index'
  root 'home#index'

  get '/about_me', to: 'about_me#index'

  get '/portfolio', to: 'portfolio#index'

  get '/connect', to: 'connect#index'

  get '/blog', to: 'blog#index'

end