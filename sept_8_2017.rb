class_seat_chart = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

# 1. Display the list of available seats to your user

class_seat_chart.each_with_index do |row, row_index|
  row.each_with_index do |seat, seat_index|
    if seat == nil
    puts "Row #{row_index + 1} seat #{seat_index +1} is free"
    end
  end
end
