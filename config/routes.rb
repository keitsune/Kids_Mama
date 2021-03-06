Rails.application.routes.draw do

  root 'homes#top'

  get '/about' => 'homes#about'

  scope module: :public do
    resource :kids, only: [:show, :edit, :update, :unsubscribe, :withdraw] do
      collection do
        get 'unsubscribe'
        patch 'withdraw'
        put 'withdraw'
      end
    end
    resources :rewards, only: [:index, :show]
    resources :helps, only: [:index]
    resources :want_rewards, only: [:index, :create, :destroy]
    resources :target_rewards, only: [:index, :create, :destroy]
    resources :help_items, only: [:index, :create]
    resources :reward_items, only: [:index, :create]
  end


  devise_for :admins
  devise_for :kids, controllers: {
    :registrations => 'kids/registrations',
    :sessions => 'kids/sessions',
    :passwards => 'kids/passwards'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :admin do
    resources :kids, only: [:index, :show]
    resources :rewards, only: [:index, :new, :create, :show, :edit, :update]
    resources :helps, only: [:index, :new, :create, :show, :edit, :update]
    resources :help_items, only: [:index, :update]
    resources :reward_items, only: [:index, :update]
  end

end
