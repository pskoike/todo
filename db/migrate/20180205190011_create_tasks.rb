class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.references :task_list, foreign_key: true
      t.string :title
      t.boolean :complete, null: false, default: false

      t.timestamps
    end
  end
end
