class User < ActiveRecord::Base
	has_secure_password
	has_many :reservations, through: :restaurants
end
