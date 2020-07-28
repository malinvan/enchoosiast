class AddReferencesToLists < ActiveRecord::Migration[6.0]
  def change
    add_reference :lists, :career, index: true
  end
end
