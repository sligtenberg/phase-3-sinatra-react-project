class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :destription
      t.integer :category_id # foreign key
      t.timestamps
    end
  end
end
