class Round < ApplicationRecord
  belongs_to :game
  belongs_to :user_question
  belongs_to :computer_question

  validates :user_question, :computer_question, presence: true
end
