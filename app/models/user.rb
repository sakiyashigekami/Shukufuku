class User < ApplicationRecord
  attr_accessor :remember_token, :activation_token, :reset_token
  has_secure_password
end
