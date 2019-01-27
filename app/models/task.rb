class Task < ApplicationRecord
  validates :task, presence: true,
            length: { minimum: 8 }

  belongs_to :user
  acts_as_taggable

  def self.search(search)
    if search
        where('LOWER(task) LIKE :search OR LOWER(deadline) LIKE :search ', search: "%#{search.downcase}%")
      else
        all
      end
  end

end
