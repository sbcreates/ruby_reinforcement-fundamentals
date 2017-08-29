digits = ['1','2','3','4','5','6','7','8','9']

en = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

fr = ['un','deux','trois','quatre','cinq','six','sept','huit','neuf']


# this array will hold the final value where en and fr arrays will be combined into hashes. ex: value_array = [{french: 'un', english: 'one'}, {french: 'deux', english: 'two'}]
value_array = []
index = 0
fr.each do |nom| #iterating through the array fr
  value_hash = {} #creating a hash inside the interation so that a new hash is created for each set of values.
  value_hash['french'] = nom
  value_hash['english'] = en[index] #since the indexes of both fr and en arrays are the same in regards to what we want paired in hashes, we can call en[index], starting at 0
  index += 1
  value_array << value_hash #put each new hash into the array so we have a collection of hashes with the english and french pairs of numbers.
end

puts value_array

nums_diff_language = {}
i = 0
digits.each do |num|
  nums_diff_language[num] = value_array[i]
  i += 1
end

puts nums_diff_language



# {
#   1: {french: 'un', english: 'one'},
#   2: {french: 'deux', english: 'two'},
#   3: {french: 'trois', english: 'three'},
#   ...
#   9: {french: 'neuf', english: 'nine'}
# # }
