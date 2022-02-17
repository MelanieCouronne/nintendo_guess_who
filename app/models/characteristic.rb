class Characteristic < ApplicationRecord
  has_one :question
  has_many :character_profiles

  validates :characteristic_name, presence: true, length: { in: 3..20 }
end
