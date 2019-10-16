Rails.application.routes.draw do
  authenticated :user do
    root to: "notes#index"
  end

  root to: 'pages#home'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
