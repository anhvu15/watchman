class Show < ActiveRecord::Base
	belongs_to :network
	def to_s
		"#{name} airs at #{day_of_week} on #{time_of_day} on #{network}"
	end
end