Rails.application.routes.draw do
  resources :students, only: [:index, :show], :constraints => { :id => /[0-9|]+/ }
  devise_for :students, :controllers => {:registrations => "registrations"}
  root 'courses#index'
end
