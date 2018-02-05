class CreateTaskLists < ActiveRecord::Migration[5.1]
  def change
    create_table :task_lists do |t|
      t.string :title
      t.string :description
      t.boolean :public, null: false, default: false

      t.timestamps
    end
  end
end
