class Question < ApplicationRecord
  has_many :trait_questions
  has_many :traits, through: :trait_questions
  has_many :answers

  validates :question, presence: true
end
