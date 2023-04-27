json.extract! agendamento, :id, :data_hora, :cliente_id, :created_at, :updated_at
json.url agendamento_url(agendamento, format: :json)
