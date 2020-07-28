class Career < ApplicationRecord
  has_many :career_traits
  has_one_attached :photo
  has_many :traits, through: :career_traits
  validates :title, :summary, :detailed_description, :social_interaction, :salary,
            :entry_barriers, :remote_flexibility, :international_flexibility,
            :working_hour_flexibility, presence: true
  act_as_likee
end
