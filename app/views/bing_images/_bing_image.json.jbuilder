json.extract! bing_image, :id, :date, :link, :local, :qiniu, :created_at, :updated_at
json.url bing_image_url(bing_image, format: :json)