class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.integer :user_id
      t.integer :trip_id
      t.string :location
      t.date :start_date
      t.date :end_date
      t.integer :priority_lvl

      t.timestamps
    end
  end
end
