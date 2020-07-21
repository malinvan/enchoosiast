class Career < ApplicationRecord
  has_many :career_traits
  has_many :traits, through: :career_traits
  validates :title, :summary, :detailed_interaction, :social_interaction, :salary, :entry_barriers, :remote_flexibility, :international_flexibility, :working_hour_flexibility, presence: true
end
