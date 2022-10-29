Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/pages/pizarron", to: "pages#pizarron", as: "pizarron"
  get "/pages/profile", to: "pages#profile", as: "profile"
  resources :grades
  resources :subjects
  # delete "subjects/:id", to: "subjects#destroy", as: "delete"

  resources :grades_subjects, only: %i[create]
  resources :courses_teachers, only: %i[create]
  resources :classrooms, only: %i[create]

  resources :posts do
    resources :comments, only: %i[create]
  end
  resources :comments, only: :destroy
end
