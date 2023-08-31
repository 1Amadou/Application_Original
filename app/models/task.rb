class Task < ApplicationRecord
    self.table_name = "tasks"  # Remplacez par le nom correct de votre table
    validates :title, presence: true
    belongs_to :user
  end
  