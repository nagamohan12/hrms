Rails.application.routes.draw do
  resources :sallary_structures
  resources :sallary_component_details
  resources :employees
  resources :user_details
  resources :user_work_details
  resources :user_profession_details
  resources :addresses
  resources :family_details
  resources :personnel_details
  resources :locations
  resources :grades
  resources :user_types
  resources :religions
  resources :languages
  resources :blood_groups
  resources :holidays
  resources :designations
  resources :departments
  devise_for :users
  resources :users
  resources :masters

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  devise_scope :user do
    root "devise/sessions#new"
  end
  get 'employees/:id/attendance' => 'employees#attendance', as: :attendance
  get 'sallary_structures/:employee_id/employee_sallary_structure' => 'sallary_structures#employee_sallary_structure', as: :employee_sallary_structure
  # get 'employees/:id/sallary_structure' => 'employees#sallary_structure', as: :sallary_structure
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
