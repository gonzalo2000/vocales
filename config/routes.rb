Rails.application.routes.draw do

  root 'static_pages#welcome'
  get '/vocales', to: 'static_pages#vocales'
  resources :words

end
