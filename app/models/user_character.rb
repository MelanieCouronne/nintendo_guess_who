class UserCharacter < ApplicationRecord
  belongs_to :character
  has_one :game
  has_many :characteristics, through: :character

  validates :character_id, presence: true

  def self.setup_characteristics(character_id)
    Character.find(character_id).characteristics.map {|characteristic| characteristic.id}
  end
end
