json.extract! cliente, :id, :nome, :data_nascimento, :idade, :email, :instagram, :profissao, :cep, :logradouro, :complemento, :bairro, :cidade, :uf, :indicacao, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
