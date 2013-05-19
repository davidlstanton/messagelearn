class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :username

  has_secure_password

  has_many :messages

  validates :username, presence: true

  validates :password, presence: true,
                       confirmation: true

  validates :password_confirmation, presence: true
end
