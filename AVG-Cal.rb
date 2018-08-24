#!/usr/bin/env ruby


puts "Please input three or more numbers with spaces inbetween them:"
numbers = gets.chomp
numbers = numbers.split(" ").map(&:to_i)
length = numbers.length
y = 0.000
numbers.each do |x|
    y = x + y
end
mean = y / length
print "Mean: #{mean}"
print "\n"
a_order = numbers.sort
length1 = (length - 1) / 2
if length%2 == 1
    median = a_order[length1]
else
    length2 = length1 + 1
    median = (a_order[length1] + a_order[length2]) / 2.000
end
print "Median: #{median}"
print "\n"
frequencies = Hash.new(0)
numbers.each do |number|
    frequencies[number] = frequencies[number] + 1
end
frequencies = frequencies.sort_by { |a, b| b }
frequencies.reverse!
frequencies = frequencies.to_a
if frequencies[0][1] == frequencies[1][1]
    print "Mode: invalid"
else
    print "Mode: #{frequencies[0][0]}"
end
