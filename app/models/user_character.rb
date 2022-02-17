class UserCharacter < ApplicationRecord
  belongs_to :character
  has_one :game
  has_many :characteristics, through: :character

  validates :character_id, presence: true
end
