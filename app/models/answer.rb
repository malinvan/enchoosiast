class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question

  validates :user, :question, presence: true
  validates :value, inclusion: { in: [true, false] }

  def trait_questions
    TraitQuestion.where(answer_value: self.value, question: self.question)
  end

  def traits
    trait_questions.map { |trait_question| trait_question.trait }
  end
end
