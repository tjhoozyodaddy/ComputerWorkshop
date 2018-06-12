#!/usr/bin/ruby
require 'faker'
Faker::Config.locale = 'en-US'

f = File.new("exercise5.csv","w")
print "how many rows of Faker data would you like to create?:"
i = gets.chomp
i=i.to_i
i.times do
name = Faker::Name.first_name
f.print "#{name},"
f.print "#{Faker::Name.last_name},"
f.print "#{Faker::IDNumber.valid},"
f.print "#{Faker::Address.full_address},"
f.print "#{Faker::Address.city},"
f.print "#{Faker::Address.state},"
f.print "#{Faker::Address.zip[0,5]},"
f.print "#{Faker::PhoneNumber.cell_phone},"
f.print "#{Faker::Internet.email("#{name}")}\n"
end

puts "\ndone creating #{i} lines of Faker data"

f.close