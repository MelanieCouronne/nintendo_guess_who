class CreateComputerQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :computer_questions do |t|
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
