Rails.application.routes.draw do
  # root 'admin#index'
  get 'admin', to: 'admin#index'
  get 'admin/new', to: 'admin#new'
  post 'admin', to: 'admin#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
