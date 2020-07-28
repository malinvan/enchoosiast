class AddReferenceToTodo < ActiveRecord::Migration[6.0]
  def change
    add_reference :todos, :list, index: true
  end
end
