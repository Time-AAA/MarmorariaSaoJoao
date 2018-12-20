json.extract! produto, :id, :nome, :created_at, :updated_at
json.url produto_url(produto, format: :json)
