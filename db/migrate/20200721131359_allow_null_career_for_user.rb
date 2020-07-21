class AllowNullCareerForUser < ActiveRecord::Migration[6.0]
  def change
    remove_reference :users, :career
    add_reference :users, :career, null: true, foreign_key: true
  end
end
