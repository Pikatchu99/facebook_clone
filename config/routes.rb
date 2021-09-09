Rails.application.routes.draw do
  resources :feeds do
    collection do
      post :confirm
    end
  end
  # resources :feeds
  root to: 'homes#index'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :posts
  get '/confirmed/:id', to: 'posts#confirmed', as: 'confirmed'
  get '/confirm/:id', to: 'posts#confirm', as: 'confirm'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/404', to: 'errors#not_found'
  # get '/422', to: 'errors#unacceptable'
  # get '/500', to: 'errors#server_errors'
  %w(404 422 500).each do |code|
    get code, :to => "errors#show", :code => code
  end
end
