class Question < ApplicationRecord
  has_one :characteristic
  has_many :user_questions
  has_many :computer_questions

  validates :characteristic_id, :title, presence: true
end
