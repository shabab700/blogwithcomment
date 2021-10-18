Rails.application.routes.draw do
  devise_for :users
   resources :posts do 
  resources :comments
 end
 resources :books do
  resources :chapters
end   

  root 'posts#index'
  get 'welcome/index'
  get 'welcome/contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

