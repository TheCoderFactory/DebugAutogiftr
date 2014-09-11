json.array!(@accounts) do |account|
  json.extract! account, :id, :first_name, :last_name, :picture, :phone, :user_id, :dob
  json.url account_url(account, format: :json)
end
