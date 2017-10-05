def draw_shape(options)
  shape = ""

  options[:rows].times do |r|
    options[:cols].times do |c|
      shape += options[:char]
    end
    shape += "\n"
  end

  return shape

end

puts draw_shape({char: "*", rows: 4, cols: 4})
puts draw_shape({char: "0", rows: 3, cols: 9})
