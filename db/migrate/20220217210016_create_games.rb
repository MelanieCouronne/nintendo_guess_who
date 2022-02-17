class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.integer :score, default: 0
      t.integer :round_count, default: 0
      t.integer :rejected_characters, default: [], array: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
