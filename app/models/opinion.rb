class Opinion < ApplicationRecord
  # Active storage
  has_one_attached :foto
  # Validations
  validates :cliente, presence: true
  validates :descripcion, length: { minimum: 5, maximum: 250 }
  validates :calificacion, numericality: { only_integer: true }
end
