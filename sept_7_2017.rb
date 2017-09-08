# Write a method that accepts a number as an argument and returns a string containing that number along with its "ordinal indicator". E.g. passing in 1 would return "1st", 2 would return "2nd", 3 would return "3rd", 4 would return "4th", etc.
#
# Make sure your method works for every number between 1 and 20. If you're feeling ambitious, see if you can get it working for numbers beyond that.

# using IRB with Ruby 2.0, you must require the below
require 'active_support/core_ext/integer/inflections'

def number_ordinal(num)
  "#{num.ordinalize}"
end

puts number_ordinal(6)
puts number_ordinal(21)
puts number_ordinal(4355645)
puts number_ordinal(0)
