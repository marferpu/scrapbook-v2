Rails.application.routes.draw do
  get 'grade_subjects/create'
  get 'course_teachers/create'
  get 'classrooms/create'
  get 'sonparents/create'
  get 'comments/create'
  get 'comments/destroy'
  get 'posts/index'
  get 'posts/new'
  get 'posts/create'
  get 'posts/edit'
  get 'posts/update'
  get 'posts/show'
  get 'posts/destroy'
  get 'subjects/index'
  get 'subjects/new'
  get 'subjects/create'
  get 'subjects/edit'
  get 'subjects/update'
  get 'subjects/show'
  get 'subjects/destroy'
  get 'grades/index'
  get 'grades/new'
  get 'grades/create'
  get 'grades/edit'
  get 'grades/update'
  get 'grades/show'
  get 'grades/destroy'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :grades
  resources :subjects
  resources :grades_subjects, only: %i[create]
  resources :courses_teachers, only: %i[create]
  resources :classrooms, only: %i[create]

  resources :posts do
    resources :comments, only: %i[create]
  end
  resources :comments, only: :destroy
end
