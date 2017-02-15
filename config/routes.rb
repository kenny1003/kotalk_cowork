Rails.application.routes.draw do
  
  get 'room' => 'room#index'

  get 'admin/store'
  get 'admin/index'
  get 'notice' =>'notice#notice'
  get 'admin/store_write'
  post 'admin/store_write'


  #관리자

  post 'admin/store'


  #주변상점 라우팅
  get 'store/store_index'


  #디바이스
  devise_for :users, :controllers => { registrations: 'registrations' }

  root 'ko_tech_talk#index'
  get 'ko_tech_talk/index'


  get 'board' => 'board#index'
  get 'board/write_post_view'
  post 'board/write_post'
  get 'board/view_post/:board_id' => 'board#view_post'
  get 'board/update_view/:board_id' => 'board#update_view'
  post 'board/update_post/:board_id' => 'board#update_post'
  get 'board/destroy_post/:board_id' => 'board#destroy_post'
  post 'board/write_comment/:board_id' => 'board#write_comment'
  get 'board/update_comment'
  get 'board/destroy_comment/:comment_id' => 'board#destroy_comment'
#tongil
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:key => "value"
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
