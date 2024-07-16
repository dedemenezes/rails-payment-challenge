# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  has_secure_password :recovery_password, validation: false # allows user to create an account without recovery password
end
