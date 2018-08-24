#!/usr/bin/ruby

require 'colorize'
require 'pp'

def delete_user(user)
        result = system("userdel -r -f #{user}")
        if result
                puts "#{user} deleted!"
        else
                puts "#{user} failed! Could Not Remove!"
        end
end

$clear = `clear`
puts $clear
puts "This script will remove any requested user, along with their Home directory and files stored within.".yellow
print "Which user would you like to delete? "
user = gets.chomp.to_s

delete_user(user)
