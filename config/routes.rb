Rails.application.routes.draw do
  namespace :api, default: {format: :json} do
    resources :heroes
  end
end
