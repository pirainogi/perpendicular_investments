class User < ApplicationRecord
  has_secure_password
  has_many :investors, dependent: :destroy
end
