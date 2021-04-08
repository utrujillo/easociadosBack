class User < ApplicationRecord
  has_secure_password
  # Validations
  validates :nombre, presence: true
  validates :apellidos, presence: true
  validates :username, presence: true, uniqueness: true
  validates :password, length: { minimum: 6 }, allow_blank: true
  validates :email, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/, message: "Bad email format" }, allow_blank: true
  # Scopes
  scope :is_visible, -> { where(visible: true) }
end
