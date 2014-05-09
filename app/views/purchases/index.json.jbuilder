json.array!(@purchases) do |purchase|
  json.extract! purchase, :id, :seller_id, :buyer_id, :listings
  json.url purchase_url(purchase, format: :json)
end
