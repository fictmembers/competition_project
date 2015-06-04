CompetitionProject::Application.routes.draw do
  resources :promocodes, only:[:new,:create,:delete]
  resources :users
  resources :sessions, only: [:new,:create,:delete]
  resources :companies
  resources :tests

  root "home_page#home"

  match '/signup',          to: 'users#new' ,              via: 'get'
  match '/signin',          to: 'sessions#new' ,           via: 'get'
  match '/signout',         to: 'sessions#destroy',        via: 'delete'
  match '/companiessignup', to: 'companies#new' ,          via: 'get'

  match '/companies/:id',   to: 'companies#show' ,         via: 'get'
  match '/promocodes',      to: 'companies#promocode',     via: 'get'

  match '/users/:id',       to: 'users#show' ,             via: 'get'
  match '/createtest',      to: 'tests#new',               via: 'get'

  match '/newinvite',       to: 'promocodes#new' ,         via: 'get'

  match '/enter_code',      to: 'users#code',              via: 'get'
  match '/checkcode',       to: 'users#check_code',        via: 'post'


  match '/companytest',     to: 'users#company_test' ,     via: 'get'
  match '/checktest',       to: 'users#check_test',        via: 'post'
  match '/checkknowledgetest',  to: 'users#check_knowledge_test',        via: 'post'
  match '/knowledgetest',       to: 'users#knowledge_test',        via: 'get'


  match '/invitations',          to: 'users#invitations' ,    via: 'get'
  match '/failtest',             to: 'users#fail_test' ,      via: 'get'
  match '/successlogicaltest',   to: 'users#success_logical_test',   via: 'get'
  match '/successtest',          to: 'users#success_test' ,   via: 'get'
  match '/developpage',          to: 'users#develop_page' ,   via: 'get'
  match '/check_added',     to: 'tests#check_added_tests' ,      via: 'post'

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
