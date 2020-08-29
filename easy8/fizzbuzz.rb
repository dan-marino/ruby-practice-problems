def fizzbuzz(num1, num2)
  for num in (num1..num2)
    if num % 3 == 0 && num % 5 == 0
      puts "FizzBuzz"
    elsif num % 3 == 0
      print "Fizz, "
    elsif num % 5 == 0
      print "Buzz, "
    else
      print "#{num}" + ', '
    end
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
