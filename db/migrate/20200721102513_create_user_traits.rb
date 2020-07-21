class CreateUserTraits < ActiveRecord::Migration[6.0]
  def change
    create_table :user_traits do |t|
      t.references :user, null: false, foreign_key: true
      t.references :trait, null: false, foreign_key: true

      t.timestamps
    end
  end
end
