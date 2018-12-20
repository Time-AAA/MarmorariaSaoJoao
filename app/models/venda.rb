class Venda < ApplicationRecord
  belongs_to :produto
  belongs_to :material
  belongs_to :cliente
end
