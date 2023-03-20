class RenameDescriptionColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column(:tasks, :destription, :description)
  end
end
