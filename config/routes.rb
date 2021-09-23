Rails.application.routes.draw do
  resource :essay_registration, only: [:new, :create]
  # resolve('EssayRegistration') { [:essay_registration] }

  mount Avo::Engine, at: Avo.configuration.root_path
  devise_for :users, path: "auth", controllers: {
    sessions: 'users/sessions'
  }

  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Almost every application defines a route for the root path ("/") at the top of this file.
  # root "articles#index"
end
