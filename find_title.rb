#!/usr/bin/ruby

# Method name: find_title
# Inputs:      A URL
# Returns:     The contents of the <title>...</title> tag at that URL
# Prints:      Nothing

require "open-uri"
require 'nokogiri'

def find_title(url)
    contents = open(url).read
    contents_title = Nokogiri::HTML(open(url)).title
  return contents_title
end

if __FILE__ == $PROGRAM_NAME
  # Some sanity checks!
  # should return true
  p find_title("https://www.google.com") == "Google"
  p find_title("https://www.yahoo.com") == "Yahoo"
  p find_title("https://www.facebook.com") == "Facebook - Log In or Sign Up"
  # should return false
  p find_title("https://www.facebook.com") ==
    "Welcome to Facebook - Log In, Sign Up or Learn More"
end

