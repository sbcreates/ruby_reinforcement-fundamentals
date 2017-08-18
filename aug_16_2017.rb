#EXERCISE 1
emotions = {
  :happy => 2,
  :sad => 1,
  :angry => 3,
  :stress => 1
}

#EXERCISE 2
class Person

  def initialize(name)
    @name = name
    @emotions = {
      :happy => 2,
      :sad => 1,
      :anger => 3,
      :stress => 1
    }
  end

  def emotions
    @emotions
  end

end

sarah = Person.new("Sarah")
p sarah.inspect

#EXERCISE 3

sarah.emotions.each do |emotions, level|
  if level == 1
    p "I am feeling a low amount of #{emotions}."
  elsif level == 2
    p "I am feeling a medium amount of #{emotions}."
  elsif level == 3
    p "I am feeling a high amount of #{emotions}."
  end
end
