Rails.application.routes.draw do
   # name_of_controller#action_on_controller
  root 'application#home'

  
  get '/new_lists' => 'lists#new', as: 'new_list'
  post '/lists' => 'lists#create', as: 'lists'
  get '/lists/:id' => 'lists#show', as: 'list'
  get '/lists' => 'lists#index'







end
  # get '/better_things' => 'application#things', as: 'things'



  # resources :boards
  # get  '/new_board' => 'boards#new', as: 'new_board'
  # post '/boards' => 'boards#create', as: 'boards'
  # get  '/boards' => 'boards#index'
  # get  '/boards/:id' => 'boards#show', as: 'board'
  # get  '/boards/:id/edit' => 'boards#edit', as: 'edit_board'
  # patch '/boards/:id' => 'boards#update'

