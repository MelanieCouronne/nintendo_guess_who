class Game < ApplicationRecord
  belongs_to :user
  belongs_to :user_character
  belongs_to :computer_character
  has_many :rounds
  has_many :characters, through: :user_characters

  validates :user_id, :user_character_id, :computer_character_id, presence: true
end
