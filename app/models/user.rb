class User < ApplicationRecord
  has_many :quotes
  has_many :quotes, through: :saved_quotes
  has_many :videos
  has_many :videos, through: :saved_videos
  has_many :games
  has_many :games, through: :saved_games
end
