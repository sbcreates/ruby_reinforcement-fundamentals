def grade(num)

  if num >= 95
    puts "You've received an A+"
  elsif num >= 90 && num <= 94
    puts "You've received an A"
  elsif num >= 85 && num <= 89
    puts "You've received an A-"
  elsif num >= 80 && num <= 84
    puts "You've received a B+"
  elsif num >= 75 && num <= 79
    puts "You've received a B"
  elsif num >= 70 && num <= 74
    puts "You've received a B-"
  elsif num >= 65 && num <= 69
    puts "You've received a C+"
  elsif num >= 60 && num <= 64
    puts "You've received a C"
  elsif num >= 55 && num <= 59
    puts "You've received a C-"
  elsif num >= 50 && num <= 54
    puts "You've received a D+"
  elsif num >= 45 && num <= 49
    puts "You've received a D"
  elsif num >= 40 && num <= 44
    puts "You've received a D-"
  else
    puts "You've received a F"
  end

end

puts "Enter your grade percentage"
user_grade = gets.to_i

grade(user_grade)
