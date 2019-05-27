json.extract! client_policy, :id, :client_name_id, :coverage_type_id, :insurer_id, :loss_runs_reqd, :renewal_date, :underwriter_id, :quote_recieved, :quote_recieved_date, :did_client_confirmed, :did_confirm_to_underwriter, :did_underwriter_confirm, :created_at, :updated_at
json.url client_policy_url(client_policy, format: :json)
