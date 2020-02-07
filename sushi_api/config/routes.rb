Rails.application.routes.draw do
  resources :menu_items, only: :index
end
