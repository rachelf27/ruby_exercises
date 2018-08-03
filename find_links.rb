#!/usr/bin/ruby

# Method name: find_links
# Inputs:      A website URL
# Returns:     An array of all link URLs on the input website
# Prints:      Nothing

require "open-uri"
require 'nokogiri'

def find_links(url)
  # This should return an array of all links at the given URL
  page = Nokogiri::HTML(open(url))
  puts "Given url is: " + url + "\n"
  all_links = page.css('a').map do |lnk|
    lnk.content.strip
  end
  p all_links
  return all_links
end

find_links("https://stackoverflow.com")
find_links("https://unboundwellness.com")
find_links("https://www.owasp.org/")
