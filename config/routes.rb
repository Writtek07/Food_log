Rails.application.routes.draw do
  #evise_for :users, :controllers => { registrations: 'registrations'}
  devise_for :user, controllers: {
        sessions: 'user/sessions',
        registrations: 'user/registrations'
      }
  resources :categories
  get 'archives/index'
  resources :entries
  root to: "entries#index"
end
