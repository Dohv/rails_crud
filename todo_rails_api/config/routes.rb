Rails.application.routes.draw do
  get 'todos/index'

  get 'todos/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :todos
end

# Prefix Verb   URI Pattern          Controller#Action
#  todos GET    /todos(.:format)     todos#index
#        POST   /todos(.:format)     todos#create
#   todo GET    /todos/:id(.:format) todos#show
#        PATCH  /todos/:id(.:format) todos#update
#        PUT    /todos/:id(.:format) todos#update
#        DELETE /todos/:id(.:format) todos#destroy