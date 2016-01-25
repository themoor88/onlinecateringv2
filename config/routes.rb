Rails.application.routes.draw do
  root 'pages#home'
  get "/how-it-works" => 'pages#how_it_works'
  get "/privacy-policy" => 'pages#privacy_policy'
  get "/terms-and-conditions" => 'pages#terms_and_conditions'
  get "/faq" => 'pages#faq'


  resources :food_items, only: [:show]
  get "/search" => 'food_items#index'

  resources :vendors, only: [:index, :show]

  devise_for :customers, controllers: {
    registrations: 'customers/custom_devise/registrations',
    sessions: 'customers/custom_devise/sessions'
  }

  devise_for :vendors, controllers: {
    registrations: 'vendors/custom_devise/registrations',
    sessions: 'vendors/custom_devise/sessions'
  }

  devise_scope :vendor do
    namespace :vendors do
      resources :food_items
      resources :orders, only: [:index, :show]
    end

    authenticated :vendor do
      root to: "pages#order", as: 'authenticated_vendor_root'
    end
  end

  devise_scope :customer do
    namespace :customers do
      resources :addresses
      resources :orders, except: [:edit]
    end

    authenticated :customer do
      root to: "pages#order", as: 'authenticated_customer_root'
    end
  end
end
