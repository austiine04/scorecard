Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    root to: 'devise/sessions#new'
  end

  authenticate :user do
    resources :dashboard, only: [:index]
  end
end
