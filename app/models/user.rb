class User < ApplicationRecord
  has_secure_password
  # Validations
  validates :username, presence: true, uniqueness: true
  validates :password, length: { minimum: 6 }, allow_blank: true
  # Scopes
  scope :is_visible, -> { where(visible: true) }
end
