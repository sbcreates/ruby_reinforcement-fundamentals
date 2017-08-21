# EXERCISE 1 - Create a Task class with a description and due_date (both strings). Define an initialize method as well as "reader" and "writer" methods for those attributes. Try creating three instances of this class and test out the reader and writer methods.

class Task

  def initialize(description, due_date)
    @description = description
    @due_date = due_date
  end

  #READERS
  def description
    @description
  end

  def due_date
    @due_date
  end

  #WRITERS
  def description=(new_description)
    @description = new_description
  end

  def due_date=(new_due_date)
    @due_date = new_due_date
  end

end

kitchen = Task.new("Clean kitchen", "Aug 25, 2017")
cook_chicken = Task.new("Help make chicken", "Aug 31, 2017")
bed = Task.new("Make bed", "Aug 21, 2017")

puts kitchen.inspect
puts cook_chicken.inspect
puts bed.inspect

kitchen.due_date=("Sept 1, 2017")
cook_chicken.description=("Help cook chicken")
bed.due_date=("Sept 25, 2018")

puts kitchen.inspect
puts cook_chicken.inspect
puts bed.inspect
