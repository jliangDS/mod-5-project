Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.
  resources(:users)
  resources(:items)
  resources(:carts)
  resources(:orders)
  resources(:charges)
  
  post('/login', to: 'authentication#login')
end
