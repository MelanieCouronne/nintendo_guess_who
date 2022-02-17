class CreateCharacterProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :character_profiles do |t|
      t.references :character, null: false, foreign_key: true
      t.references :characteristic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
