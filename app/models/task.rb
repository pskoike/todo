class Task < ApplicationRecord
  belongs_to :task_list, optional: true

  validates :title, presence: true
end
