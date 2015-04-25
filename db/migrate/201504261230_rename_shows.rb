class RenameShows < ActiveRecord::Migration
	def change
		rename_column :shows,:hour,:time_of_day
	end
end