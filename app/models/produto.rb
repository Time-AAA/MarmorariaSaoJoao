class Produto < ApplicationRecord
  # nome
  validates :nome, presence: { message: 'é um campo obrigatório' }
  validates :nome, length: { minimum: 3, message: ' tem menos de três caracteres' }
  validates :nome, length: { maximum: 50, message: ' tem mais de cinquenta caracteres' }
  validates :nome, format: { with: /\A[a-zA-Z' 'ãẽĩõũáéíóúàèìòùâêîôûäüïöü-]+\z/, message: ' deve possuir apenas letras' }
end
