require 'rubygems'
require 'bundler/setup'
require './db/setup'
# Open all files in the model directories and add to dependencies
Dir.glob('./models/*').each { |r| require r}
puts "There are #{Show.count} shows in the database"

all_networks = Network.all
all_networks.each do |n|
	puts "Show airing on #{n}"
	n.shows.each do |s|
		puts s
	end
end


