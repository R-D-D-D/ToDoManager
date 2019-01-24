class Task < ApplicationRecord
  validates :task, presence: true,
            length: { minimum: 8 }

  belongs_to :user
end
