class AddCareerRefToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :career, null: false, foreign_key: true
  end
end
