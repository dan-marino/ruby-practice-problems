# you have a bank of switches before you numbered from 1 to n
# each switch is connected to exactly one light that is initially off
# you walk down the row of switches and toggle every on e of them
# you go back to the beginning and on this second pass you toggle switches 2 4 6 and so on
# on the third pass you toggle 3 6 9 and so on
# you repeat this n repetitions

# input number
# output array

# we have a bank of lights from 1 to number
# keep adding the numbers to the array
# if amount of numbers in the array are odd, select them, make array uniq and sort

def light_switch(number)
  on_arr = []
  counter = 0

  until counter == number
    counter += 1

    for num in (counter..number)
      on_arr << num if num % counter == 0
    end
    on_arr.each{ |elem| on_arr.delete(elem) if on_arr.count(elem) > 1 }
  end
  
  on_arr.sort
end

p light_switch(5)
# p light_switch(10)
# p light_switch(1000)
