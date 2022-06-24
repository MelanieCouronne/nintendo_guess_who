class CharacterProfile < ApplicationRecord
  belongs_to :character
  belongs_to :characteristic

  validates :character_id, :characteristic_id, presence: true
end
