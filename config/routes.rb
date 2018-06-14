Rails.application.routes.draw do
  get 'sales/new'
  post 'sales', to: 'sales#create'
  get 'sales/:id', to: 'sales#show'
end
