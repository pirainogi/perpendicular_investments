class User < ApplicationRecord
  has_secure_password
  has_many :investors, dependent: :destroy

  validates :username, presence: true
  validates :password, presence: true
end
