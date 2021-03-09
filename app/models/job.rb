class Job < ApplicationRecord
  # Assosiations
  belongs_to :category
  # Active Storage
  has_many_attached :fotos
  # Scopes
  scope :is_visible, -> { where(visible: true) }
end
