Rails.application.routes.draw do

root 'listings#all_site_listings'

get '/faq' => 'welcome#faq', as: :faq
get '/credit' => 'welcome#credit', as: :credit

get '/sign_up' => 'users#new', as: :sign_up

get '/auth/:provider/callback' => "sessions#twitter_create"
get '/auth/failure', :to => 'sessions#twitter_failure'
get '/login' => 'sessions#new'
post '/login/:user_id/send_login_link' => 'sessions#request_token', as: :request_token
get '/login/:user_id/*auth_token' => 'sessions#create'
get '/logout' => 'sessions#destroy'

match '/listings' => 'listings#all_site_listings', via: [:get, :post], as: :search_listings
get '/listings/:tag' => 'listings#all_site_listings', as: :search_for_tag

  resources :users do

      get '/closet' => 'listings#user_closet'
      resources :listings do
        post '/make_offer' => 'offers#make_offer'
        resources :offers, only: [:index]
      end

      get '/current_offers' => 'offers#all_user_offers'

      post '/add_to_cart' => 'purchases#add_to_cart', as: :add_to_cart
      patch '/add_to_cart' => 'purchases#add_to_cart'
      get '/cart' => 'purchases#cart'
      resources :purchases, only: [:index, :new, :show, :destroy]
      get '/checkout' => 'purchases#checkout'
      patch '/checkout' => 'purchases#checkout'

      resources :messages
  end

  resources :charges

end
