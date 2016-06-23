class User < ActiveRecord::Base
	has_many :transaction_items

  has_secure_password
  validates_confirmation_of :password
	end

