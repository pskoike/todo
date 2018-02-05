class TaskList < ApplicationRecord
  has_many :tasks
  belongs_to :user, optional: true

  validates :title, presence: true
end
