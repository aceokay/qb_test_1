Rails.application.routes.draw do
  root :to => 'home#index'
  resources :surveys do
    # resources :questions
  end
end
