class Venda < ApplicationRecord
  belongs_to :produto
  belongs_to :material
  belongs_to :cliente

  validates :valorVenda, presence: { message: 'é um campo obrigatório' }
  validates :valorVenda, numericality: { message: 'é um campo apenas numérico' }
  validates :valorVenda, numericality: { greater_than_or_equal_to: 0, message: ' deve ser maior ou igual a zero' }

  validates :valorInstalacao, presence: { message: 'é um campo obrigatório' }
  validates :valorInstalacao, numericality: { message: 'é um campo apenas numérico' }
  validates :valorInstalacao, numericality: { greater_than_or_equal_to: 0, message: ' deve ser maior ou igual a zero' }

end
