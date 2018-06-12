#!/usr/bin/ruby
csv_file = File.new("commasep.txt", "w")
csv_file.print("column1",",","column2",",","column3\n")
csv_file.print("value1A",",","value1B",",","value1C\n")
csv_file.print("value2A",",","value2B",",","value2C\n")
csv_file.close


ARGV.each do |thisfile|
  i = 0
  f = File.new(thisfile, "r")
    f.each_line { i += 1}
    puts thisfile + " has " + i.to_s + " lines."
  f.close
end