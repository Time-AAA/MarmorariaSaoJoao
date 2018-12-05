class Fornecedor < ApplicationRecord

  #Nome
  validates :nome, presence: {message: "é um campo obrigatório"}
  validates :nome, length: {minimum: 5, message: " tem menos de cinco caracteres"}
  validates :nome, length: {maximum: 200, message: " tem mais de duzentos caracteres"}
  validates :nome, format: { with: /\A[a-zA-Z-' '-ãẽĩõũáéíóúàèìòùâêîôûäüïöü-]+\z/, message: " deve possuir apenas letras" }

  #CNPJ
  validates :cnpj, presence: {message: "é um campo obrigatório"}
  validates :cnpj, format: { without: /\A[a-zA-Z-' '-ãẽĩõũáéíóúàèìòùâêîôûäüïöü-]+\z/, message: " deve possuir apenas letras" }
end
