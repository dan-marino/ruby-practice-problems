def diamonds(number)
  star_number = 1

  until star_number == number
    puts ("*"* star_number).center(number)
    star_number += 2
  end
  until star_number < 1
    puts ("*"* star_number).center(number)
    star_number -= 2
  end
end

diamonds(9)
diamonds(19)

def star_outline(number)
  star_number = 1
  mid_point = (number / 2)
  mid_point += 1 if mid_point.even?
  top_bottom = "*".center(number)

  puts top_bottom
  until star_number == mid_point
    puts ("*" + (" " * star_number) + "*").center(number)
    star_number += 2
  end
  until star_number < 1
    puts ("*" + (" " * star_number) + "*").center(number)
    star_number -= 2
  end
  puts top_bottom
end

star_outline(10)