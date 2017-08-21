# EXERCISE 2 - Create a TodoList class with a tasks array (which will contain instances of the Task class). Create an initialize method and an add_task method that allows you to pass in an instance of your Task class. Try creating a todo list and adding your three tasks to it.
require 'pry'
require_relative('./aug_21_2017.rb')

class TodoList

  @@tasks = []

  def initialize

  end

  def self.add_task(description, due_date)
    @@tasks << Task.new(description, due_date)
    return @@tasks
  end

  def self.task_list
    @@tasks.each do |task|
      puts task.inspect
    end
  end

end

TodoList.new

puts TodoList.task_list

TodoList.add_task("Clean kitchen", "Aug 25, 2017")
TodoList.add_task("Help make chicken", "Aug 31, 2017")
TodoList.add_task("Make bed", "Aug 21, 2017")

TodoList.task_list
