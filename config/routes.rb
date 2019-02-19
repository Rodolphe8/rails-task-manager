Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/tasks", to: "tasks#index"
  get "/tasks/new", to: "tasks#new", as: :create 
  get "/tasks/edit/:id", to: "tasks#edit", as: :edit 
  get "/tasks/:id", to: "tasks#show", as: :task 
  post "/tasks", to: "tasks#create"
end
