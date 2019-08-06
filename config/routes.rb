Rails.application.routes.draw do
  root to: 'surveys#index'
  resources :surveys do
    resources :questions
  end

  resources :questions do
    resources :answers
  end

end
