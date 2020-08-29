def star(num)
  halfway = (num / 2.0).ceil
  space_size = halfway - 2

  until space_size < 0
    puts (('*' + ' ' * space_size) * 3).rstrip.center(num)
    space_size -= 1
  end

  puts ('*' * num)
  space_size += 1

  until space_size == halfway - 1
    puts (('*' + ' ' * space_size) * 3).rstrip.center(num)
    space_size += 1
  end

end

star(9)
star 19