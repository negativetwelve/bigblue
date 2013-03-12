KeasDevices::Application.routes.draw do
  
  devise_for :users

  resources :user_tokens do
    collection do
        get 'fitbit_reply'
    end
    member do
        get 'show_activity'
        get 'show_activity_statistics'
        get 'show_activities_on_date'
        get 'show_activities'
    end
  end

  resources :pages do
    collection do
      get 'home'
    end
  end
  
  resources :notification
  
  resources :fitbit do
    #routes HTTP Post request
    member do
      post 'index'
      get 'authorize'
      post 'verify'
    end      
    collection do
      get 'authorize'
      get 'index'
      post 'verify'
      get 'verify'
      get 'verifier'
      get 'remove_sub'
    end
  end

  root :to => 'pages#home'    

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
  # just remember to delete public/old_index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
