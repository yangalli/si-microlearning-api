Rails.application.routes.draw do
  resources :lessons
  resources :courses
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
