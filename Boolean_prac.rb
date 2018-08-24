#!/usr/bin/env ruby

######################################
#thi is a test, number 1
def boo1
a=3
if
  a==5
  puts "chess"
else
  puts "wrong"
end
end
#####################################


#####################################
#this is a test, number 2
def boo2
if true
  puts "true is truthy, duh!"
else
  puts "true is falsey, wtf!"
end

if nil
  puts "nil is truthy"
else
  puts "nil is falsey"
end

if 0
  puts "0 is truthy"
else
  puts "0 is falsey"
end
end


def truthy_or_falsey value
  # We don't know what `value` is
  # It could be true, false, or a non-boolean value like 1, "", etc.
  # Ruby only cares about whether something is truthy or falsey, though.
  # Let's go look!

  if value
    # What does inspect do here?
    # Remove it and see how the output changes.
    puts "#{value.inspect} is truthy"
    
    # Instead of calling value.inspect, call value.to_s
    # How does the output of that look?
  else
    puts "#{value.inspect} is falsey" 
  end
end

[true, false, Object, 0, 1, nil, true, false, "", [1, 2, 3], {}].each do |value|
  truthy_or_falsey(value)
end
##############################################

##############################################
#This is test3

def and_op(a,b)
  a && b
end

def or_op(a,b)
  a || b
end

def not_op(a)
  !a
end

def print_and_op(a,b)
  return_value = and_op(a,b)
  if return_value
    puts "#{a.inspect} && #{b.inspect} returns #{return_value.inspect}, which is truthy!"
  else
    puts "#{a.inspect} && #{b.inspect} returns #{return_value.inspect}, which is falsey!"
  end
end

def print_or_op(a,b)
  return_value = or_op(a,b)
  if return_value
    puts "#{a.inspect} || #{b.inspect} returns #{return_value.inspect}, which is truthy!"
  else
    puts "#{a.inspect} || #{b.inspect} returns #{return_value.inspect}, which is falsey!"
  end
end

def print_not_op(a)
  return_value = not_op(a)
  if return_value
    puts "!#{a.inspect} returns #{return_value.inspect}, which is truthy!"
  else
    puts "!#{a.inspect} returns #{return_value.inspect}, which is falsey!"
  end
end

print_and_op(true, 1)
print_and_op(true,Object)
print_and_op(true,"")
print_and_op(false, 1)
print_and_op(false, Object)
print_and_op(false,"")
print_and_op(false, false)
print_and_op(nil, false)
print_and_op(false, nil)
print_and_op(false, true)
print_and_op(nil, true)

print_or_op(true,1)
print_or_op(true, Object)
print_or_op(true,"")
print_or_op(false,1)
print_or_op(false, Object)
print_or_op(false,"")
print_or_op(false, false)
print_or_op(nil, false)
print_or_op(false, nil)
print_or_op(false, true)
print_or_op(nil, true)

print_not_op(1)
print_not_op(Object)
print_not_op("")
print_not_op(true)
print_not_op(false)
print_not_op(nil)

#####################################################
