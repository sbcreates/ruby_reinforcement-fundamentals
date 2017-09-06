# if the number is divisible by 2 the value should be one more than the key
# if the number is divisible by 7 the value should be one less than the key
# if the number is divisible by 2 and 7 the value should be the key multiplied by 2
# otherwise the value should be the same number as the key

value_hash = {}
i = 1
50.times do
  if i % 2 == 0 && i % 7 == 0
    value_hash[i] = (i * 2)
  elsif i % 2 == 0
    value_hash[i] = (i + 1)
  elsif i % 7 == 0
    value_hash[i] = (i - 1)
  else
    value_hash[i] = i
  end
  i += 1
end

puts value_hash
