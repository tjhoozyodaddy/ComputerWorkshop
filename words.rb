#!/usr/bin/ruby

words = Hash.new(0)
input = File.new(ARGV[0])

input.each_byte do |ch|
  x = ch.chr.downcase
  words[x] +=1 if x =~ /[a-z]/
end

input.close
wrap = 0
words = words.sort
words.each do |key, val|
  print key + ":" + val.to_s + " "
  wrap += 1
  if(wrap % 5 == 0)
    puts
  end
end