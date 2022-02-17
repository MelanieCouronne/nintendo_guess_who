class ComputerQuestion < ApplicationRecord
  belongs_to :question
  has_one :round
end
