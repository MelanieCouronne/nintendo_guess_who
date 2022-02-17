class CharacterProfile < ApplicationRecord
  belongs_to :character
  belongs_to :characteristic
end
