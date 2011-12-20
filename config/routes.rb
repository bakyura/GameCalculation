GamecalculationDemo::Application.routes.draw do
  
  devise_for :models
  devise_for :users, :path => "usuarios", :path_names => { :sign_in => 'login', :sign_out => 'logout', :password => 'secret', :confirmation => 'verification', :unlock => 'unblock', :registration => 'register', :sign_up => 'cmon_let_me_in' }
  devise_for :admins, :controllers => { :sessions => "admins/sessions" }

  root :to => "home#news"
  
  match '/last_news',  :to => "home#news"
  match '/supported_leagues',  :to => "home#supported_leagues"
  match '/assistant',  :to => "home#assistant"
  match '/algoritms',  :to => "home#algoritms"
  match '/services',  :to => "home#services"
  match '/about',  :to => "home#about"
  
  devise_scope :user do
    get "sign_in", :to => "devise/sessions#new"
  end

  resources :news do 
    as_routes 
  end
  
  resources :leagues_admin do 
    as_routes 
  end
  
  match 'leagues', :to => 'leagues#index'
  match 'leagues/:id', :to => 'leagues#details'

  resources :countries_admin do
    as_routes
  end
  
  match 'countries', :to => 'countries#index'

  resources :pages do
    as_routes
  end
  
  resources :bookmakers_admin do
    as_routes
  end
  
  match 'bookmakers', :to => 'bookmakers#index'
  
  resources :betting_predictions do
    as_routes
  end
  
  resources :settings do
    as_routes
  end
  
  resources :tasks do
    as_routes
  end
  
  resources :tests do
    as_routes
  end
  
  match 'football_matches', :to => 'football_matches#index'
  match 'football_matches/:id', :to => 'football_matches#details'
  
  resources :football_clubs_admin do
    as_routes
  end
  
  match 'football_clubs', :to => 'football_clubs#index'
  match 'football_clubs/:id', :to => 'football_clubs#details'
  
  resources :statistics
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
  
end
