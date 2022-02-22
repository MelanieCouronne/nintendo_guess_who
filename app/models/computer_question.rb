class ComputerQuestion < ApplicationRecord
  belongs_to :question
  has_one :round

  def self.set_up_question
    all_questions = Question.all.count
    return rand(1..all_questions)
  end

end
