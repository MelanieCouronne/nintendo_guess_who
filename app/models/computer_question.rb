class ComputerQuestion < ApplicationRecord
  belongs_to :question
  has_one :round

  def self.set_up_question
    all_questions = Question.all.count
    return rand(5..all_questions)
  end

  def self.first_question
    return 2 # title: "Is the character male?", id=2
  end

  def self.second_question
    return 4 #title: "Is the character human?", #id=4
  end

end
