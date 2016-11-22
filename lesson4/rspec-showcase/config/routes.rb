Rails.application.routes.draw do
  resources :posts do
    member do
      put :publish
      put :unpublish
    end
  end
  root 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
