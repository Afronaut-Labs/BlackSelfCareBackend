json.extract! game, :id, :url, :category, :created_at, :updated_at
json.url game_url(game, format: :json)
