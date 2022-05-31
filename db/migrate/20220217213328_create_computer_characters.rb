class CreateComputerCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :computer_characters do |t|
      t.references :character, null: false, foreign_key: true
      t.integer :computer_characteristics, default: [], array: true

      t.timestamps
    end
  end
end
