Rails.application.routes.draw do

  devise_for :users
  root 'static_pages#welcome'
  get '/vocales', to: 'static_pages#vocales'
  get 'a',        to: 'vowel_words#a_words'
  get 'e',        to: 'vowel_words#e_words'
  get 'i',        to: 'vowel_words#i_words'
  get 'o',        to: 'vowel_words#o_words'
  get 'u',        to: 'vowel_words#u_words'
  get 'azar',     to: 'vowel_words#random_word'
  resources :words

end
