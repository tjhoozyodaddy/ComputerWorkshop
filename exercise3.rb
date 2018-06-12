#!/usr/bin/ruby

require 'faker'

ss_file = File.new("ss_file.txt","w+")
ss_file.puts "#{Faker::Name.name}, 555-55-5555"
ss_file.puts "#{Faker::Name.name}, 123121234"
ss_file.puts "#{Faker::Name.name}, 123.12.1234"

ss_file.seek(0,0)

ss_file.each_line do |line|
  puts "#{line}" if line =~ /\d{3}-*\d{2}-*\d{4}/
end

ss_file.close