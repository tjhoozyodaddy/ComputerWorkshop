#!/usr/bin/ruby

stats = File.stat(ARGV[0])

$\ = "\n"

print "Last Access Time: ", stats.atime
print "Last Modification Time: ", stats.mtime

print "Mode is: ", stats.mode
print "Size is: ", stats.size

print "Is File?: ", stats.file?
print "Is Dir?: ", stats.directory?
print "Filetype is: ", stats.ftype