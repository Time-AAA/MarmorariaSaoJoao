Rails.application.routes.draw do
  resources :funcionarios
  resources :fornecedors
  resources :materials
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end