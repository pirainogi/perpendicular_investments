json.extract! investor, :id, :first_name, :last_name, :dob, :phone, :street_address, :state_address, :zip_code, :created_at, :updated_at
json.url investor_url(investor, format: :json)
