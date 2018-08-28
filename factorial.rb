#!/usr/bin/ruby

# Method name: factorial
# Inputs:      A single non-negative integer, n
# Returns:     The factorial of n (see below)
# Prints:      Nothing

# The factorial of 5 is denoted by 5! and is defined as
#   5! = 5*4*3*2*1
#
# In English, you'd read "5!" as "five factorial".  In general, the factorial
# of a number is the product of every number from that number down to 1, so
#
#   4! = 4*3*2*1
#  10! = 10*9*8*7*6*5*4*3*2*1
#

def factorial(n)
    print "Factorial is: ", n, "\n"
    # convert the factorial to string
    str = n.to_s.insert(1, '!')
    print str, "\n"
    fact = n.downto(1).inject(:*)
    print fact, "\n"
    n.downto(1) do |i|
        #con_str = 
        print i, "*", (i-1), "\n"
        i = i+1
    end
end

if __FILE__ == $PROGRAM_NAME
  # What are the common cases?  What are the corner cases?
  # Your sanity checks should look like
    factorial(5)
  #   p factorial(input) == ...expected return value...
end