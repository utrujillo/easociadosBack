class Category < ApplicationRecord
  #Assosiations
  has_many :jobs, dependent: :destroy
  # Validations
  validates :nombre, presence: true
  # Scopes
  scope :is_visible, -> { where(visible: true) }
end
