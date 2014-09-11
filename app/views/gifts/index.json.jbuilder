json.array!(@gifts) do |gift|
  json.extract! gift, :id, :name, :description, :price, :image, :slug
  json.url gift_url(gift, format: :json)
end
