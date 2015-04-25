require 'yaml'
all_people = YAML.load_file('test.yml')

class Person
	attr_accessor :name,:age,:kids
	
	def to_s
		"name :#{name}\t age: #{age}"
	end
end

people = all_people.map do |person|
	p = Person.new
	p.name = person.fetch("name")
	p.age = person.fetch("age")
	p.kids = person.fetch("kids")
	p
end

people.each {|p| puts p.inspect}