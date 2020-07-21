class Career < ApplicationRecord
  has_many :career_traits
  has_many :traits, through: :career_traits
end
