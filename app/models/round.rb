class Round < ApplicationRecord
  belongs_to :game
  belongs_to :question
  belongs_to :user_question
  belongs_to :computer_question
end
