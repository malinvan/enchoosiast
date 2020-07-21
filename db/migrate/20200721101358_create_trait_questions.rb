class CreateTraitQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :trait_questions do |t|
      t.string :answer_value
      t.references :question, null: false, foreign_key: true
      t.references :trait, null: false, foreign_key: true

      t.timestamps
    end
  end
end
