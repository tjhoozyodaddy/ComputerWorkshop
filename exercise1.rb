#!/usr/bin/ruby

f = File.new(ARGV[0],"r")
f.each_line do |line|
  puts "#{line}" if line =~ /\d+/
end

f.close