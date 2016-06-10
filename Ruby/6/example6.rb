#!/usr/bin/env ruby2

outfile = 'out.txt'

text = "aldsfkjlsadfkj\nalsdfkjalsdfjk\nalsdkjflasdfjk\nlasdkjlsadkjf\n"

puts "Writing to outfile ..."
File.write outfile, text

puts "Reading from outfile ..."

File.open(outfile).each do |line|
    puts line
end

puts 'Adding more text to outfile ...'
more_text = "alsdkjfalfdkj\nalsdfjldfkj\n"

File.write outfile, more_text, mode: 'a'

puts 'Reading entire file ...'
puts File.read outfile