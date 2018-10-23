class Task < ApplicationRecord
  validates :title, presence: true
  validates :completed, default: false
end
