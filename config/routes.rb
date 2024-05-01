Rails.application.routes.draw do
  root "gordens#index"

  resources "gordens", only: [:show] do
    member do
      get :gardener
    end

    resources "plants", only: [:new, :create]
  end
end
