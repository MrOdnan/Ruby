#!/usr/bin/env ruby

require 'pp'
require 'colorize'
require 'benchmark'

$clear = `clear`

totaltime = Benchmark.realtime do

def startup
        print "Provide file you would like to alter: ".green
        $ui = gets.strip.gsub(" ", "")
        print "Provide the name you would like it changed to: ".green
        $uichange = gets.strip.gsub(" ", "")
end

def renamer
        begin
                File.rename("#{$ui}", "#{$uichange}")
        rescue Exception => e
                puts "Oopsies! Looks like that file does not exist. Please re-run and check file.".red
        end
end

puts $clear

startup
renamer

end

sleep 1
puts "Time elapsed #{totaltime} seconds".blue
