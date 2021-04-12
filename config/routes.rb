Rails.application.routes.draw do
  get 'student_courses/create'
  resources :students, only: [:index, :show], :constraints => { :id => /[0-9|]+/ }
  devise_for :students, :controllers => {:registrations => "registrations"}
  root 'courses#index'
  post 'student_enroll', to: 'student_courses#create'
end
