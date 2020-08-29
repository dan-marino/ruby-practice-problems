def triangle(num)
  star_count = 1

  until star_count > num
    star = "*" * star_count
    puts star.rjust(num)
    star_count += 1
  end
end

triangle(15)