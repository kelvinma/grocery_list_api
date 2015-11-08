Rails.application.routes.draw do
  post '/register' => 'auth#register'
  # patch '/confirm' => 'auth#confirm'
  post '/login' => 'auth#login'
  delete '/logout/:id' => 'auth#logout'

  resources :users, except: [:new, :edit]

  resources :recipes, except: [:new, :edit]

  resources :ingredients, except: [:new, :edit]

  resources :weekly_menus, except: [:new, :edit]
end
