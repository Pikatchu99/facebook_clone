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
  get '/404', to: 'errors#not_found'
  get '/422', to: 'errors#unprocessable'
  get '/500', to: 'errors#internal_server'

end
