class AddPriorityColumn < ActiveRecord::Migration[6.1]
  def change
    add_column(:tasks, :high_priority, :boolean)
  end
end
