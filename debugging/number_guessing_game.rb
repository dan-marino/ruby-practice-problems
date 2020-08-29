def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  winning_number = rand(1..max_number)
  attempts = 0

  loop do
    attempts += 1
    if attempts > max_attempts
      puts "Sorry, you ran out of attempts!"
      puts "The number was #{winning_number}!"
      break
    end

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
      break
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number

      # Try again:
    end
  end
end

guess_number(10, 3)
