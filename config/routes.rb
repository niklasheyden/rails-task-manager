Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# all tasks
get "tasks", to: "tasks#index"

# get form for new task
get "tasks/new", to: "tasks#new", as: :new_task

# task details
get "tasks/:id", to: "tasks#show", as: :task

# create new task
post "tasks", to: "tasks#create"

# get task to edit
get "tasks/:id/edit", to: "tasks#edit", as: :edit_task

# update task
patch "tasks/:id", to: "tasks#update"

delete "tasks/:id", to: "tasks#destroy"

end
