json.extract! bing_image, :id, :link, :created_at, :updated_at
json.url bing_image_url(bing_image, format: :json)