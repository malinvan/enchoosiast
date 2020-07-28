class AddColumnToTodo < ActiveRecord::Migration[6.0]
  def change
    add_column :todos, :category, :string
  end
end
