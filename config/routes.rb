Crossapp::Application.routes.draw do        

  devise_for :users

  get "apps/index"   
  match "apps/show/:id" => "apps#show", :as => :show_app, :via => :get
  root :to => 'apps#index'
  get "contact/index"
  get "about/index"               
  
  namespace :admin do 

    get "about/index"
    get "about/new"
    post "about/create"
    match "about/edit/:id" => "about#edit", :as => :about_edit, :via => :get
    match "about/:id/update" => "about#update", :as => :about_update, :via => :put

    get "categories/index"
    get "categories/new"
    get "categories/show"
    post "categories/create"
    match "categories/edit/:id" => "categories#edit", :as => :categories_edit, :via => :get
    match "categories/:id/update" => "categories#update", :as => :categories_update, :via => :put
    match "categories/destroy/:id" => "categories#destroy", :as => :categories_destroy, :via => :delete
    
    get "apps/index"
    get "apps/new"
    match "apps/show/:id" => "apps#show", :as => :apps_show, :via => :get
    post "apps/create"
    match "apps/edit/:id" => "apps#edit", :as => :apps_edit, :via => :get
    match "apps/:id/update" => "apps#update", :as => :apps_update, :via => :put
    match "apps/destroy/:id" => "apps#destroy", :as => :apps_destroy, :via => :delete
    match "apps/:id/upload_image" =>  "apps#upload_image", :as => :app_upload_image, :via => :get
    match "apps/:id/upload" => "apps#upload", :as => :app_upload, :via => :post
    match "apps/:id/upload_app" =>  "apps#upload_app", :as => :app_upload_app, :via => :get
    match "apps/:id/save_app" => "apps#save_app_file", :as => :save_app, :via => :post

    get "users/index"
    get "users/new"
    match "users/show/:id" => "users#show", :as => :users_show, :via => :get
    post "users/create"
    match "users/edit/:id" => "users#edit", :as => :users_edit, :via => :get
    match "users/:id/update" => "users#update", :as => :users_update, :via => :put
    match "users/destroy/:id" => "users#destroy", :as => :users_destroy, :via => :delete

    get "devices/index"
    get "devices/new"
    get "devices/show"
    post "devices/create"
    match "devices/edit/:id" => "devices#edit", :as => :devices_edit, :via => :get
    match "devices/:id/update" => "devices#update", :as => :devices_update, :via => :put
    match "devices/destroy/:id" => "devices#destroy", :as => :devices_destroy, :via => :delete

    get "mobile_resolutions/index"
    get "mobile_resolutions/new"
    get "mobile_resolutions/show"
    post "mobile_resolutions/create"
    match "mobile_resolutions/edit/:id" => "mobile_resolutions#edit", :as => :mobile_resolutions_edit, :via => :get
    match "mobile_resolutions/:id/update" => "mobile_resolutions#update", :as => :mobile_resolutions_update, :via => :put
    match "mobile_resolutions/destroy/:id" => "mobile_resolutions#destroy", :as => :mobile_resolutions_destroy, :via => :delete

    get "pictures/index"
    match "pictures/edit_portrait/:id" => "pictures#edit_portrait", :as => :portrait_edit, :via => :get
    match "pictures/edit_landscape/:id" => "pictures#edit_landscape", :as => :landscape_edit, :via => :get
    match "pictures/:id/update_portrait" => "pictures#update_portrait", :as => :portrait_update, :via => :put
    match "pictures/:id/update_landscape" => "pictures#update_landscape", :as => :landscape_update, :via => :put

  end

  

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
  # match ':controller(/:action(/:id))(.:format)'
end
