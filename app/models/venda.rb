class Venda < ApplicationRecord
  belongs_to :produto
  belongs_to :material
  belongs_to :cliente

  validates :valorVenda, presence: { message: 'é um campo obrigatório' }
  validates :valorInstalacao, presence: { message: 'é um campo obrigatório' }
end
