Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "post#index"
  
  get "posts" => "post#index"
  get "posts/new" => "post#new"
  post "posts" => "post#create"
  get "posts/:id" => "post#show", as: "post"
  get "posts/:id/edit" => "post#edit", as: "post_edit"
  patch "posts/:id" => "post#update"
  delete "posts/:id" => "post#destroy"
end
