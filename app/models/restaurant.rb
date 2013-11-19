class Restaurant < ActiveRecord::Base
# 	validates :name, :description => true
	has_many :reservations
	has_many :users, through: :reservations

	def total_seats
		100
	end


	def open_time
		# this should return a DateTime object (10am for example)
	end

	def close_time
		
	end
end
