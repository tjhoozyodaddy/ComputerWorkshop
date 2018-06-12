#!/usr/bin/ruby

file = File.new("filename.txt","w")
file.puts("Hello, this is the first line.")
file.puts("Whats up, this is now the second line.")
file.puts("Hola, que pasa!?")
file.close

ARGV.each do |item|
  if (FileTest.exist?(item))
    puts item + " exist"
  else
    puts item + " does not exist"
  end
end

