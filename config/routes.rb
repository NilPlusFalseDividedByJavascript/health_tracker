Rails.application.routes.draw do
  # get 'weights/index'
  #
  # get 'weights/show'
  #
  # post 'weights/create'
  #
  # get 'weights/new'
  #
  # get 'weights/edit'
  #
  # get 'weights/update'
  #
  # get 'weights/destroy'

  root'weights#dashboard'

  get 'exercise_type/index'

  get 'exercise_type/show'

  get 'exercise_type/new'

  get 'exercise_type/edit'

  get 'exercise_type/update'

  get 'exercise_type/destroy'

  get 'exercise_type/create'

  get 'exercise_typeindex/show'

  get 'exercise_typeindex/new'

  get 'exercise_typeindex/edit'

  get 'exercise_typeindex/update'

  get 'exercise_typeindex/destroy'

  get 'exercise_typeindex/create'

  resources :weights
  resources :excercises
  resources :steps
  resources :consumed_cals
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
