Rails.application.routes.draw do



root 'welcome#home'

get "/auth/:provider/callback" => "sessions#twitter_create"
get '/auth/failure', :to => 'sessions#failure'

get '/login' => 'sessions#new'

post '/login/:auth_token' => 'sessions#create'
get '/logout' => 'sessions#destroy'


match '/listings' => 'listings#all_site_listings', via: [:get, :post], as: :search_listings

  resources :users do

      post '/send_login_link' => 'sessions#request_token', as: :request_token

      get '/closet' => 'listings#user_closet'
      resources :listings

      post '/make_offer' => 'offers#make_offer'
      resources :offers, only: [:index]

      post '/add_to_cart' => 'purchases#add_to_cart', as: :add_to_cart
      patch '/add_to_cart' => 'purchases#add_to_cart'
      get '/cart' => 'purchases#cart'
      resources :purchases

      resources :messages
  end

  resources :charges




  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
