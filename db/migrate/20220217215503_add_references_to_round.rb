class AddReferencesToRound < ActiveRecord::Migration[6.1]
  def change
    add_reference :rounds, :user_question, null: false, foreign_key: true
    add_reference :rounds, :computer_question, null: false, foreign_key: true
  end
end
