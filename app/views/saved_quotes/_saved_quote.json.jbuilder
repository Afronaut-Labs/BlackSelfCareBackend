json.extract! saved_quote, :id, :user_id, :quote_id, :created_at, :updated_at
json.url saved_quote_url(saved_quote, format: :json)
