class AddContentsToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :content, :string
  end
end
