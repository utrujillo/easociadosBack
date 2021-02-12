class Job < ApplicationRecord
  # Assosiations
  belongs_to :category
  # Scopes
  scope :is_visible, -> { where(visible: true) }
end
