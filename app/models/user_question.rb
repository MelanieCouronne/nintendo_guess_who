class UserQuestion < ApplicationRecord
  belongs_to :question
  has_one :round
end
