class AddComputerRejectedCharactersToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :computer_rejected_characters, :integer, default: [], array: true
  end
end
