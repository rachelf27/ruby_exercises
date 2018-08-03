#!/usr/bin/ruby

# Method name: commas
# Inputs:      A number, n
# Returns:     A string representing the input, with commas inserted into the
#              correct position.
# Prints:      Comma inserted string

# For example,
#
#  commas(123)     == "123"
#  commas(1234)    == "1,234"
#  commas(12345)   == "12,345"
#  commas(1234567) == "1,234,567"

def commas(num)
  str = num.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
  print str, "\n"
  return str
end

if __FILE__ == $PROGRAM_NAME
  p commas(123) == "123"
  p commas(1234) == "1,234"
  p commas(1234234) == "1,234,234"
  p commas(-1234234567) == "-1,234,234,567"
end