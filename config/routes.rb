Rails.application.routes.draw do
  resources :fiber_facts
  resources :country_facts
  resources :items
  resources :random_facts
  resources :users
  resources :item_fiber_facts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
