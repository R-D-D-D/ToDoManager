class AddTaglistToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :tag_list, :string
  end
end
