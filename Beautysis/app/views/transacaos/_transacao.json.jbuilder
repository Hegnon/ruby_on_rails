json.extract! transacao, :id, :descricao, :tipo, :valor, :data, :cliente_id, :created_at, :updated_at
json.url transacao_url(transacao, format: :json)
