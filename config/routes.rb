Rails.application.routes.draw do

  root 'homes#top'

  scope module: :public do
    resource :kids, only: [:show, :edit, :update, :unsubscribe, :withdraw]
    get "kids/unsubscribe" => "kids#unsubscribe"
    patch "kids/withdraw" => "kids#withdraw"
    put "kids/withdraw" => "kids#withdraw"
    resources :rewards, only: [:index, :show]
    resources :helps, only: [:index]
    resources :want_rewards, only: [:index, :create, :destroy]
    resources :target_rewards, only: [:index, :create, :destroy]
  end


  devise_for :admins
  devise_for :kids
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :admin do
    resources :kids, only: [:index, :show]
    resources :rewards, only: [:index, :new, :create, :show, :edit, :update]
    resources :helps, only: [:index, :new, :create, :show, :edit, :update]
  end

end
