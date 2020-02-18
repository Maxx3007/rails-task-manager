Rails.application.routes.draw do

#show all
get 'tasks', to: 'tasks#index'

#create
post 'tasks', to: 'tasks#create'
get 'tasks/new', to: 'tasks#new', as: :new_task

#read one
get 'tasks/:id', to: 'tasks#show', as: :task


#update
get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
patch 'tasks', to: 'tasks#update'

#destroy
delete 'tasks/:id', to: 'tasks#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
