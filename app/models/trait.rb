class Trait < ApplicationRecord
  has_many :career_traits
  has_many :careers, through: :career_traits
  has_many :trait_questions
  has_many :traits, through: :trait_questions
  has_many :user_traits
end
