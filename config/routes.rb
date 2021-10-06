Rails.application.routes.draw do
  get 'top/main'
  post 'top/login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'top#main'
  get 'top/logout'
  
end
