puts "Enter the length of the room in meters:"
length = gets.chomp

puts "Enter the width of the room in meters:"
width = gets.chomp

area_meters = (width.to_f * length.to_f).round(2)
area_feet = (area_meters.to_f * 10.7639).round(2)

puts <<-MSG
The area of the room is #{area_meters} in meters
and #{area_feet} in feet.
MSG
