json.extract! client, :id, :first_name, :last_name, :company_id, :created_at, :updated_at
json.url client_url(client, format: :json)
