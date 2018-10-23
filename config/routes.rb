Rails.application.routes.draw do

# READ
  # Show all tasks
  get 'tasks', to: 'tasks#index'

# CREATE
  # Create a new task by filling in form with data
  get 'tasks/new', to: 'tasks#new'
  # Create a new task (save data in form above) with a "post" order
  post 'tasks', to: 'tasks#create'

# READbis - #Show one specific task - NB :SHOW ROUTE HAS TO GO AFTER NEW ROUTE
  get 'tasks/:id', to: 'tasks#show', as: :show

# UPDATE
  # Update some fields of existing task in form
  get 'tasks/:id/edit', to: 'tasks#edit'
  # Update with patch
  patch 'tasks/:id', to: 'tasks#update'

# DELETE
  delete 'tasks/:id', to: 'tasks#delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
