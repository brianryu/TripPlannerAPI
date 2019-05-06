class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :todo_id
      t.string :message

      t.timestamps
    end
  end
end
