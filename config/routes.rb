Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :tasks

  #read
  # get 'tasks', to: 'tasks#index'
  # get 'tasks/:id', to: 'tasks#show', as: :task

  # #create
  # get 'tasks/new', to: 'tasks#new'
  # post 'task', to: 'tasks#create'

  # #update
  # get 'tasks/:id/edit', to: 'tasks#edit'
  # patch 'tasks/:id', to: 'tasks#update'

  # #delete
  # delete 'tasks/:id', to: 'tasks#destroy'
end
