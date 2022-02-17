class Question < ApplicationRecord
  has_one :characteristic
  has_many :rounds
  has_many :user_questions
  has_many :computer_questions

  validates :characteristic_id, :question, presence: true
end
