# frozen_string_literal: true

class User < ApplicationRecord
  validates :email, presence: true
  has_secure_password
  has_secure_password :recovery_password, validations: false # allows user to create an account without recovery password
end
