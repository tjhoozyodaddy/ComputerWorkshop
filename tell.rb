#!/usr/bin/ruby

chars = String.new
f = File.new("letters","w+");
"A".upto("Z") {|letter| chars << letter}

print "1) Current file position: " + f.tell.to_s + "\n"

puts "Writing " + chars
f.puts chars

print "2) Current file position after writing: " + f.tell.to_s + "\n"

puts "Now seeking to the beginning of the file."
f.seek(0,0)

print "3) Current file position: " + f.tell.to_s + "\n"

puts "Now seeking to the middle-ish of the file and reading."

pos = 14

f.seek(pos,0)
print "4) Current file position: " + f.tell.to_s + "\n"
puts "from position #{pos} the file reads: #{f.gets()}"