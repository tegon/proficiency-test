Rails.application.routes.draw do
  root to: 'pages#index'
  resources :students
  resources :courses
  resources :classrooms
end