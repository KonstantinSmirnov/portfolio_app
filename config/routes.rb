Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'static_pages#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get 'projects' => 'static_pages#projects'
  get 'contact' => 'static_pages#contact'

  # Sessions
  resources :sessions, only: [:new, :create, :destroy]
  get 'login' => 'sessions#new'
  delete 'logout' => 'sessions#destroy'

  # Messaging (contact email)
  post 'contact', to: 'messages#create'



  resources :polls, :only => [] do
    member do
      put 'vote'
      get 'results'
      get 'questions'
    end
  end

  namespace :admin do
    get 'dashboard' => 'dashboard#edit'
    patch 'dashboard' => 'dashboard#update'
    resources :projects
    resources :polls do
      resources :questions
    end
    # Change password
    get 'change_password' => 'password#edit'
    patch 'update_password' => 'password#update'
  end

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
