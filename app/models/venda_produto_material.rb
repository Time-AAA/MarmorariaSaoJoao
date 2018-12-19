class VendaProdutoMaterial < ApplicationRecord
  belongs_to :venda
  belongs_to :produto
  belongs_to :material
end
