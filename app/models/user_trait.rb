class UserTrait < ApplicationRecord
  belongs_to :user
  belongs_to :trait

  validates :user_id, :trait_id, presence: true
end
