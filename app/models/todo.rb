class Todo < ApplicationRecord
  belongs_to :list

  validates :category, inclusion: { in: ["reading", "education", "online content"] }
  validates :category, presence: true

  def self.categories
    ["reading", "education", "online content"]
  end
end
