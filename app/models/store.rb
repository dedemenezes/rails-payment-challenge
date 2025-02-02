class Store < ApplicationRecord
  include DocumentCleaning

  has_secure_password
  has_secure_password :recovery_password, validations: false

  validates :password, length: { minimum: 6 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :cnpj, presence: true, format: { with: /\A\d{14}\z/ }, uniqueness: { case_sensitive: false }
  validates :balance, presence: true, numericality: { only_integer: true }
end
