Rails.application.routes.draw do
  resource :student_kkp_guidances, only: [:edit, :update]

  resources :kkp_guidances do
    get :approval
    patch :approve

    get :rejection
    patch :reject
  end

  resource :about, only: [:show]

  resources :essay_proposals do
    get :approval
    patch :approve

    get :rejection
    patch :reject
  end

  resources :kkp_registrations do
    get :approval
    patch :approve

    get :rejection
    patch :reject
  end
  # resolve('EssayProposal') { [:essay_proposals] }

  mount Avo::Engine, at: Avo.configuration.root_path
  devise_for :users, path: "auth", controllers: {
    sessions: "users/sessions"
  }

  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Almost every application defines a route for the root path ("/") at the top of this file.
  # root "articles#index"
end
