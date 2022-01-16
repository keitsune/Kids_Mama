Rails.application.routes.draw do

  root 'homes#top'

  scope module: :public do

  end


  devise_for :admins
  devise_for :kids
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :admin do

  end

end
