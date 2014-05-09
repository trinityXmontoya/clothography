json.array!(@listings) do |listing|
  json.extract! listing, :id, :user_id, :brand_id, :category_id, :size_id, :gender_id, :title, :description, :sale_price, :original_price, :price, :status, :condition
  json.url listing_url(listing, format: :json)
end
