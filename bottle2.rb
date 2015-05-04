#bottle.rb


def recycler(full_bottles, empty_bottles, caps)

# caps = (full_bottles/4).floor
# empty_bottles


puts full_bottles_from_caps = (10 / 4).floor
puts "full_bottles_from_caps: #{full_bottles_from_caps}"

puts leftover_caps_from_caps = 10%4
puts "leftover_caps_from_caps: #{leftover_caps_from_caps}"


puts full_bottles_from_empty_bottles = (10/2).floor
puts "full_bottles_from_empty_bottles: #{full_bottles_from_empty_bottles}"

puts leftover_caps_from_empty_bottles = 10%2


total_full_bottles = full_bottles_from_caps + full_bottles_from_empty_bottles
total_caps = leftover_caps_from_caps + leftover_caps_from_empty_bottles




#recycler(full_bottles, empty_bottles, caps) if full_bottles != 0

end




recycler(20, 0, 0)


