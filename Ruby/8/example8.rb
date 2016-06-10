#!/usr/bin/env ruby2

$LOAD_PATH << '.'
require "people"
include People

People.get.each do |person|

    puts "Person ..."
    year_left_til_ret = 0

    person.each do |k, v|
        puts "#{k}: #{v}"
        begin
            year_left_til_ret = 65 - v if k.to_s.eql? 'age'
        rescue TypeError
            year_left_til_ret = 65 - v.to_i if k.to_s.eql? 'age'
        end
    end
    puts "Years left: #{year_left_til_ret}" if !year_left_til_ret.eql? 0
    puts ""
end