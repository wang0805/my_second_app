Rails.application.routes.draw do
  get 'recipes/index'

  get 'courses/index'

  #root 'courses#index'
  #to change the root
  root 'recipes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
