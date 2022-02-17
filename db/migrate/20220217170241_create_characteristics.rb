class CreateCharacteristics < ActiveRecord::Migration[6.1]
  def change
    create_table :characteristics do |t|
      t.string :Characteristic_name

      t.timestamps
    end
  end
end
