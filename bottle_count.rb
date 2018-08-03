#!/usr/bin/ruby

# Method name: bottles
# Inputs:      A number, n
# Returns:     Nothing
# Prints:      The text for "99 bottles", starting at the input number and
#              counting down to 1

# For example, bottles(99) should print...
#
# 99 bottles of beer on the wall, 99 bottles of beer.
# Take one down, pass it around, 98 bottles of beer on the wall!
# 98 bottles of beer on the wall, 99 bottles of beer.
# Take one down, pass it around, 97 bottles of beer on the wall!
#
# ... and so on...
#
# 2 bottles of beer on the wall, 2 bottles of beer.
# Take one down, pass it around, 1 bottle of beer on the wall!
# 1 bottle of beer on the wall, 1 bottle of beer.
# Take one down, pass it around, no more bottles of beer on the wall!

# NOTE NOTE NOTE
# This method should print out the correct form of "bottles".  That is,
# it should say
#   2 bottles
#   1 bottle
#   no more bottles
#   etc.

def beer_bottles(start_number)
  start_number.downto(1) do |i|
    print "#{i} bottle#{i > 1 ? "s" : ""} of beer on the wall,", " #{i} bottle#{i > 1 ? "s" : ""} of beer", "\n"
    if i >= 2
      print "Take one down, pass it around"," #{i-1} bottle#{i > 2 ? "s" : ""} of beer on the wall!\n\n"
    else
      print "Take one down, pass it around,"," no more bottle#{i <= 1 ? "s" : ""} of beer on the wall!\n\n"
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  beer_bottles(99)
end