Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'
  resources :video do
    collection do
      get :stop
      get :play
    end
  end
end
