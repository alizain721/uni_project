Rails.application.routes.draw do
  namespace :v1, defaults: {format: :json} do
    resources :users do
      collection do
        post 'login'
      end
    end
  end
end
