json.array!(@purchases) do |purchase|
  json.extract! purchase, :id, :amount, :tracking_id
  json.url purchase_url(purchase, format: :json)
end
