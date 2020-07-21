class CreateCareers < ActiveRecord::Migration[6.0]
  def change
    create_table :careers do |t|
      t.string :title
      t.text :summary
      t.text :detailed_description
      t.string :social_interaction
      t.integer :salary
      t.string :entry_barriers
      t.string :remote_flexibility
      t.string :international_flexibility
      t.string :working_hour_flexibility
      t.text :next_steps

      t.timestamps
    end
  end
end
