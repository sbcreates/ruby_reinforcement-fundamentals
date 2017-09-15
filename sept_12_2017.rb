require 'pry'

def check_syntax(str)
  # hash with string key and value
  openables = {
    "(" => ")",
    "[" => "]",
    "{" => "}",
    "<" => ">"
  }

  # array
  open = []

  # variable that contains the keys of the hash openables
  opening_chars = openables.keys
  # variable that contains the values of the hash openables
  closing_chars = openables.values

  # iteration through each character in the argument being passed into the method (str)
  str.each_char do |char|

    # if a character in the argument being passed is same as keys of openables is included
    if opening_chars.include?(char) # opening bracket

      # puts the character in the open array if the character is included in openables
      open << char

    # if a character in the argument being passed is same as values of openables is included
    elsif closing_chars.include?(char) # closing bracket

      required_char = openables[open.last]

      # if the character is equal to the required_char
      if char == required_char # it's the right kind of closing bracket

        # take out the last item in the open array
        open.pop

      else

        if open.any? # it's the wrong kind of closing bracket
          puts "* You have a syntax error: there is an unexpected #{char} where there should be a #{openables[open.last]}"
        else # there's nothing to close
          puts "* You have a syntax error: there is an unexpected #{char} where there is nothing to close."
        end

        return false

      end

    end
  end

  if open.any?
    required_char = openables[open.last]
    puts "* You have a syntax error: the string ended without a closing #{required_char}"
  end

  return open.empty?
end

puts check_syntax("(this)[] is some text")
puts "*****"
puts check_syntax("(this)] is some text")
puts "*****"
puts check_syntax("[(this] is some text")
puts "*****"
puts check_syntax("[this][ is some text")
puts "*****"
puts check_syntax("[this] is some text")
puts "*****"
puts check_syntax("<html> (this)[] is some text</html>")
puts "*****"
puts check_syntax("<html> (this)] is some text</html>")
puts "*****"
puts check_syntax("<html> [(this] is some text</html>")
puts "*****"
puts check_syntax("<html> [this][ is some text</html")
puts "*****"
puts check_syntax("<html> [this] is some text</html")
