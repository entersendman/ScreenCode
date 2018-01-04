Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pages#index"
  
  get "posts" => "post#index"
  get "posts/new" => "post#new"
  post "posts" => "post#create"
  get "posts/:id" => "post#show", as: "post"
  get "posts/:id/edit" => "post#edit", as: "post_edit"
  patch "posts/:id" => "post#update"
  delete "posts/:id" => "post#destroy"

  post "post/:id/comments" => "comment#create", as: "post_comments"
  delete "post/:id/comments/" => "comment#destroy"

  get "users/:id" => "pages#user", as: "user"
end
