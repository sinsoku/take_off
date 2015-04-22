TakeOff::Engine.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  match '*path' => 'pages#show', via: :get
  root 'pages#show'
end
