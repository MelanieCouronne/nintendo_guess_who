class AddReferencesToGame < ActiveRecord::Migration[6.1]
  def change
    add_reference :games, :computer_character, null: false, foreign_key: true
    add_reference :games, :user_character, null: false, foreign_key: true
  end
end
