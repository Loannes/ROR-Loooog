json.array!(@image_assets) do |image_asset|
  json.extract! image_asset, :id, :slug, :lg, :md, :sm, :xs
  json.url image_asset_url(image_asset, format: :json)
end
