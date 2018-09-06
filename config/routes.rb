Rails.application.routes.draw do
  resources :television_shows
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "pages#root"
end
