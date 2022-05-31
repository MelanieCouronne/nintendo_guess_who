class Character < ApplicationRecord
  has_many :character_profiles
  has_many :user_characters
  has_many :computer_characters
  has_many :characteristics, through: :character_profiles
  has_many :games, through: :user_characters

  has_one_attached :photo

  validates :character_name, presence: true
end
