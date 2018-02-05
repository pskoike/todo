class AddUserReferencesToTaskList < ActiveRecord::Migration[5.1]
  def change
    add_reference :task_lists, :user, foreign_key: true, index: true
  end
end
