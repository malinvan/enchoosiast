class CareerTrait < ApplicationRecord
  belongs_to :career
  belongs_to :trait
  validates :career_id, :trait_id, presence: true
end
