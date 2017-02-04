Rails.application.routes.draw do


  get 'home_tabs/home'

  get 'home_tabs/incorporation'

  get 'home_tabs/purpose'

  get 'home_tabs/programs'

  get 'home_tabs/calendar'

  get 'course/home'

  resources :teaching_activities
  get 'teaching_pages/home'

  get 'teaching_pages/learning'

  get 'teaching_pages/adult'

  get 'teaching_pages/domains'

  get 'teaching_pages/barriers'

  get 'teaching_pages/guiding'

  get 'teaching_pages/theory'

  get 'teaching_pages/self'

  resources :communication_activities
  get 'communication_pages/home'

  get 'communication_pages/communication'

  get 'communication_pages/three'

  get 'communication_pages/verbal'

  get 'communication_pages/nonverbal'

  get 'communication_pages/feedback'

  resources :evaluation_credits
  resources :student_evaluation_case2s
  get 'student_evaluation/home'

  get 'student_evaluation/performance'

  get 'student_evaluation/tool'

  get 'student_evaluation/structure'

  get 'student_evaluation/ptmacs'

  get 'student_evaluation/learning'

  get 'student_evaluation/use'

  get 'planning_pages/planning_home'

  get 'planning_pages/tx_consortium'

  get 'planning_pages/philosophy'

  get 'planning_pages/players'

  get 'planning_pages/apta_link'

  get 'planning_pages/site_development'

  get 'planning_pages/scheduling'

  get 'planning_pages/clinical_education'

  get 'planning_pages/learning_experiences'

  get 'planning_pages/legal_issues'

  get 'planning_pages/case_study'

  get 'planning_pages/to_receive_credit'

  resources :planning_credits
  resources :planning_case1s
  resources :evaluations
  get 'quiz/display'
  get 'quiz/results'

  resources :attempts
  resources :questions
  devise_for :users
  
  get 'pages/home'
  get 'pages/part1'
  get 'pages/part2'
  get 'pages/announcements'
  get 'pages/members'
  get 'pages/clinician'
  get 'pages/related'
  get 'pages/ptmacs'
  get 'pages/resources'
  get 'pages/ciccourse'
  get 'pages/award'
  get 'pages/award_Melzer'
  get 'pages/award_Long'
  get 'pages/ccus'
  get 'pages/products'
  get 'pages/cart_items'
  get 'pages/sign_in'  
  get 'creatives/index'

  resources :cart_items
  resources :products
  
  post "/cart_items/:id" => "cart_items#show"
  post "/hook" => "cart_items#hook"
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  
  #root 'pages#home'
  
  #root 'home_tabs#home'
  root 'creatives#index'

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
