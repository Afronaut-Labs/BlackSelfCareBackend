json.extract! saved_video, :id, :user_id, :video_id, :created_at, :updated_at
json.url saved_video_url(saved_video, format: :json)
