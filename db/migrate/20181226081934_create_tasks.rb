class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :deadline
      t.text :task
      t.string :tag_list
      t.timestamps
    end
  end
end
