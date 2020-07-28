class List < ApplicationRecord
  belongs_to :user
  belongs_to :career
  has_many :todos
end
