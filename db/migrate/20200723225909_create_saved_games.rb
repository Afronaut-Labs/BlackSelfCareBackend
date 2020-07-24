class CreateSavedGames < ActiveRecord::Migration[6.0]
  def change
    create_table :saved_games do |t|
      t.integer :user_id
      t.integer :game_id

      t.timestamps
    end
  end
end
