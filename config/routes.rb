Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'artists', to: 'artists#index'
    end
  end
end
