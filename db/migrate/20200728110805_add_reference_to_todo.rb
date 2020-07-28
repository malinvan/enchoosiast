class AddReferenceToTodo < ActiveRecord::Migration[6.0]
  def change
    add_column :todos, :list, :reference
  end
end
