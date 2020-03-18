Rails.application.routes.draw do
  root :to => 'users#top'
  get 'home/about' => 'users#about', as: 'about_book'
  devise_for :users, controllers: {sessions: 'devise/sessions', 
  	registrations: 'devise/registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books, only: [:new, :create, :index, :show, :edit, :update]
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  resources :users, only: [:index, :show, :edit, :update]
end


