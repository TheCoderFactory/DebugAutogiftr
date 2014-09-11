json.array!(@occasions) do |occasion|
  json.extract! occasion, :id, :recipient_id, :name, :occasion_type, :message, :date
  json.url occasion_url(occasion, format: :json)
end
