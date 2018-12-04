json.extract! funcionario, :id, :nome, :cpf, :telefone, :salario, :rua, :numero, :complemento, :cep, :cidade, :estado, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
