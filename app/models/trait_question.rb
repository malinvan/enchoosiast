class TraitQuestion < ApplicationRecord
  belongs_to :question
  belongs_to :trait

  validates :answer_value, :question_id, :trait_id, presence: true
end
