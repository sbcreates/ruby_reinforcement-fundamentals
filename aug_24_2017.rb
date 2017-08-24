class Location

  def initialize(name)
    @name = name
  end

# READER
  def name
    @name
  end

end


class Trip

    def initialize
      @destinations = [] #array for all trip locations
    end

    def add_location(name)
      @destinations << Location.new(name) #add location to trip
    end

# READER
    def destinations
      @destinations
    end

    def trip_plan
      puts "Began trip."
      @destinations.each_cons(2) do |location|
        puts "traveled from #{location[0].name} to #{location[1].name}"
      end
      puts "Trip ended."
    end

end

usa = Trip.new
usa.add_location("Miami")
usa.add_location("Orlando")
usa.add_location("Tallahassee")
usa.add_location("Atlanta")
usa.add_location("Charlotte")
usa.add_location("Ashville")
usa.add_location("Washinton D.C.")
usa.add_location("NYC")
usa.add_location("Buffalo")
usa.add_location("Toronto")
# puts usa.inspect
usa.trip_plan
