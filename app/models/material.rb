class Material < ApplicationRecord
  # Nome
  validates :nome, presence: { message: 'é um campo obrigatório' }
  validates :nome, length: { minimum: 3, message: ' tem menos de três caracteres' }
  validates :nome, length: { maximum: 50, message: ' tem mais de cinquenta caracteres' }
  validates :nome, format: { with: /\A[a-zA-Z-' '-ãẽĩõũáéíóúàèìòùâêîôûäüïöü-]+\z/, message: ' deve possuir apenas letras' }

  # Valor
  validates :valor, presence: { message: 'é um campo obrigatório' }
  validates :valor, numericality: { message: 'é um campo apenas numérico' }
  validates :valor, numericality: { greater_than_or_equal_to: 0, message: ' deve ser maior ou igual a zero' }
end
