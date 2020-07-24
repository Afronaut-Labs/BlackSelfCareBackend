json.extract! video, :id, :url, :category, :created_at, :updated_at
json.url video_url(video, format: :json)
