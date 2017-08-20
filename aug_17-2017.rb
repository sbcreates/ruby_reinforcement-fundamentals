require 'pry'

#EXERCISE 1
#Define a method that accepts a list of numbers as an argument and returns the sum of odd numbers in the list
def sum_of_odd_nums(*numbers)
  sum = 0
  numbers.each do |nums|
    if nums % 2 != 0
      sum += nums
    end
  end
  p sum
end

sum_of_odd_nums(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)


def sum_of_even_nums(*numbers)
  sum = 0
  #defining variable of sum
  numbers.each do |nums|
  #running number arguments that have been put into an array using the splat (*)
    if nums % 2 == 0
    #if numbers are divisible by two, the remainder should equal 0.
      sum += nums
      #adding all numbers that are even together in the variable sum
    end
  end
  p sum
end

sum_of_even_nums(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)


#2 EXERCISE
#Pick three names and store them in an array.
#Prompt user to enter their name. If their name is one of the names in the array, display a greeting message that includes their name. If their name isn't in the list, display "Who goes there?"

random_names_list = [Kathy, Don, Mallory, Stanton, Danny, Blaise, Paulo, Barbara, Penelope]
