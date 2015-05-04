#bottle.rb


investment_amount = 40

initial_bottles =  investment_amount / 2

@ultimate_full_bottles = initial_bottles
@ultimate_caps = 0
@ultimate_empty_bottles = 0
@cycle_count = 0

def recycler(full_bottles, empty_bottles, caps)

  puts "new stage of recycling: "

 current_caps = full_bottles + caps
  current_bottles = full_bottles + empty_bottles
  

  full_bottles_from_caps = ( current_caps /4).floor
#puts "full_bottles_from_caps: #{full_bottles_from_caps}"

leftover_caps =  current_caps%4
#puts "leftover_caps: #{leftover_caps}"

full_bottles_from_empty_bottles = ( current_bottles /2).floor
#puts "full_bottles_from_empty_bottles: #{full_bottles_from_empty_bottles}"

leftover_empty_bottles = current_bottles % 2
#puts "leftover_empty_bottles #{leftover_empty_bottles}" 


total_full_bottles = full_bottles_from_caps + full_bottles_from_empty_bottles 
total_caps = leftover_caps 
total_empty_bottles =  leftover_empty_bottles 
puts "total_full_bottles: #{total_full_bottles};  empty_bottles: #{total_empty_bottles};  caps: #{total_caps}"

@ultimate_full_bottles = @ultimate_full_bottles + total_full_bottles
@ultimate_caps = total_caps
@ultimate_empty_bottles = total_empty_bottles
puts "ultimate_full_bottles: #{@ultimate_full_bottles};  ultimate_empty_bottles: #{@ultimate_empty_bottles}; ultimate_caps: #{@ultimate_caps}"



@cycle_count += 1


recycler(total_full_bottles, total_empty_bottles, total_caps) unless full_bottles_from_caps == 0 && full_bottles_from_empty_bottles == 0 



#recycler(full_bottles, empty_bottles, caps) if full_bottles != 0

end




recycler(initial_bottles, 0, 0)
# puts "#{@ultimate_full_bottles}"
# puts "#{@ultimate_caps}"
# puts "#{@ultimate_empty_bottles}"

