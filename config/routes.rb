Rails.application.routes.draw do
  resources :destinations, only: [:index, :create, :destroy, :update] 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
