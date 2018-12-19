Rails.application.routes.draw do
  get 'home/index'

  root to: 'home#index'

  resources :clientes
  resources :funcionarios
  resources :fornecedors
  resources :materials
  resources :produtos
  resources :vendas
  resources :venda_produto_materials #ainda nao sei se pode ficar aqui

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
