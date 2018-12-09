Rails.application.routes.draw do
  resources :clientes
  resources :funcionarios
  resources :fornecedors
  resources :materials

  root 'welcome#index'

  # match 'coverage/' => 'coverage#index.html', via: :get
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end