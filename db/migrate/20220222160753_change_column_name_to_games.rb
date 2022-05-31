class ChangeColumnNameToGames < ActiveRecord::Migration[6.1]
  def change
    rename_column :games, :rejected_characters, :user_rejected_characters
  end
end
