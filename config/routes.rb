Rails.application.routes.draw do
  resources :blogs
  resources :users
  post "/blog/:blog_id/comment/new", to: "comments#create", as: 'blog_comments'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
