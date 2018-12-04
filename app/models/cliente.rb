class Cliente < ApplicationRecord
  # nome
  validates :nome, presence: { message: 'é um campo obrigatório' }
  validates :nome, length: { minimum: 5, message: ' tem menos de cinco caracteres' }
  validates :nome, length: { maximum: 200, message: ' tem mais de cinquenta caracteres' }
  validates :nome, format: { with: /\A[a-zA-Z-' '-ãẽĩõũáéíóúàèìòùâêîôûäüïöü]+\z/, message: ' deve possuir apenas letras' }

  # cpf
  validates :cpf, presence: { message: 'é um campo obrigatório' }


  # telefone
  validates :telefone, presence: { message: 'é um campo obrigatório' }
  
  # rua
  validates :rua, presence: { message: 'é um campo obrigatório' }

  # numero
  validates :numero, presence: { message: 'é um campo obrigatório' }

  # cep
  validates :cep, presence: { message: 'é um campo obrigatório' }

  # cidade
  validates :cidade, presence: { message: 'é um campo obrigatório' }

  # estado
  validates :estado, presence: { message: 'é um campo obrigatório' }
end
