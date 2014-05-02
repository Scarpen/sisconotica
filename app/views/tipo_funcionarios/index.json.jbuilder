json.array!(@tipo_funcionarios) do |tipo_funcionario|
  json.extract! tipo_funcionario, :id, :tipo
  json.url tipo_funcionario_url(tipo_funcionario, format: :json)
end
