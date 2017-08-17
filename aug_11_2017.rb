train_log = [
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

p "*===#1===*"
train8_direction = train_log[7][:direction]
p train8_direction

p "*===#2===*"
train6_frequency = train_log[5][:frequency_in_minutes]
p train6_frequency

p "*===#3===*"
train3_direction = train_log[2][:direction]
p train3_direction

p "*===#4===*"
train_direction_north = []
train_log.each do |train|
  if train[:direction] == "north"
    north_bound = train[:train]
    train_direction_north << north_bound
  end
end
p train_direction_north

p "*===#5===*"
train_direction_east = []
train_log.each do |train|
  if train[:direction] == "east"
    east_bound = train[:train]
    train_direction_east << east_bound
  end
end
p train_direction_east

p "*===#6===*"
def train_direction(array, direction)
  new_array = []
  array.each do |train|
    if train[:direction] == direction
      train_direction = train[:train]
      new_array << train_direction
    end
  end
  return new_array
end

train_north = train_direction(train_log, "north")
train_east = train_direction(train_log, "east")
p train_north
p train_east

p "*===#7===*"
train_log[4][:first_departure_time] = (1...25)
p train_log[4]
