# Update your solution to accept a low and high value when you create a GuessingGame object, 
# and use those values to compute a secret number for the game. 
# You should also change the number of guesses allowed so the user can always win if she uses a good strategy. 

class GuessingGame

  def initialize(first, last)
    @first = first
    @last = last
    @range = (first..last)
  end

  def play
    initialize_game
    loop do
      prompt_guess
      break if win? || zero_guesses_remaining?
      give_hint
    end
    display_result
  end

  def initialize_game
    @number_to_guess = (range).to_a.sample
    @number_of_guesses = Math.log2(range.size).to_i + 1
  end

  def prompt_guess
    puts "You have #{number_of_guesses} guesses remaining."
    loop do
      puts "Enter a number between #{first} and #{last}:"
      self.guess = gets.chomp.to_i
      break if guess.between?(first, last)
      puts "Sorry, invalid input."
    end
    self.number_of_guesses -= 1
  end

  def win?
    guess == number_to_guess
  end

  def zero_guesses_remaining?
    number_of_guesses.zero?
  end

  def give_hint
    puts guess > number_to_guess ? "Your guess is too high." : "Your guess is too low."
  end

  def display_result
    puts win? ? "You guessed correctly!" : "You lost, the number was #{number_to_guess}!"
  end

  protected

  attr_reader :number_to_guess, :range, :first, :last
  attr_accessor :guess, :number_of_guesses
end

game = GuessingGame.new(501, 1500)
game.play