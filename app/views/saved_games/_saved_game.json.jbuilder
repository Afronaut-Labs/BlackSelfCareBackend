json.extract! saved_game, :id, :user_id, :game_id, :created_at, :updated_at
json.url saved_game_url(saved_game, format: :json)
