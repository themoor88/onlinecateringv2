Rails.application.routes.draw do
  root 'pages#home'
  get '/how-it-works' => 'pages#how_it_works'
  get '/sell-food-with-us' => 'pages#sell_food', as: 'sell_food'
  get '/about-us' => 'pages#about_us'
  get '/privacy-policy' => 'pages#privacy_policy'
  get '/terms-and-conditions' => 'pages#terms_and_conditions', as: 'terms'
  get '/faq' => 'pages#faq'

  get '/food-items/:id' => 'food_items#show', as: 'food_item'
  get '/search' => 'food_items#index'

  authenticate :admin do
    mount Sidekiq::Web => '/sidekiq'
  end

  devise_for :customers, controllers: {
    registrations: 'customers/custom_devise/registrations',
    sessions: 'customers/custom_devise/sessions'
  }

  devise_for :vendors, controllers: {
    registrations: 'vendors/custom_devise/registrations',
    sessions: 'vendors/custom_devise/sessions'
  }

  devise_scope :customer do
    namespace :customers do
      resources :addresses
      resources :orders, except: [:edit]
      resources :vendors, only: [:index, :show]
      get '/account-details' => 'account#index'
    end
  end

  devise_scope :vendor do
    namespace :vendors do
      resources :food_items, path: 'food-items'
      resources :orders, only: [:index, :show]
      get '/account-details' => 'account#index'
    end
  end
end
