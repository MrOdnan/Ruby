#!/usr/bin/env ruby

require 'io/console'
require 'colorize'
require 'pp'

def do_create_user(no,us,pw)
        pwd = pw.crypt("$5$a1")
        1.upto(no) do |x|
                uname = us + x.to_s
                result = system("useradd -m -p '#{pwd}' #{uname}")
                if result
                        puts "#{uname} created!"
                        else
                                puts "#{uname} failed! :( "
                end
        end
end

puts "Lets begin with clearing the screen."
sleep 1
$clear = `clear`
puts $clear
puts "This script will create X amount of users with the preffix you've selected.".yellow
print "How many users do you want to create? "
count = gets.chomp.to_i
print "Enter the username suffix, user, u etc... "
user = gets.chomp.downcase
print "Enter Password: "
password = STDIN.noecho(&:gets).chomp
puts " "
do_create_user(count,user,password)
