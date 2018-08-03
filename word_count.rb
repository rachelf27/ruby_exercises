#!/usr/bin/ruby

# Method name: word_count
# Input: A string representing an English sentence
# Returns: The number of words in the sentence
# Prints: The number of words in a string
#
# Although it's more complicated in reality, we'll just pretend
# that sequence of spaces in a sentence designates the start of a new word.
# That means we don't care about how many spaces are between two words, only
# that there is at least one.

def word_count(string)
    print "\nThe string ", "\"", string, "\"", "\n"
    array = string.split(' ')
    count = array.count
    print "has words ", array, " and word count is: ", count, "\n"
    return count
  end
  
  if __FILE__ == $PROGRAM_NAME
    p word_count("apple") == 1
    p word_count("123...321") == 1
    p word_count("one two three") == 3
    p word_count("This sentence has five words.") == 5
    p word_count("No-spaces-here") == 1
    p word_count("") == 0  # Empty string
    p word_count(" ") == 0 # A string consisting of a single space
  end