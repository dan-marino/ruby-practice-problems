# Create an object-oriented number guessing class for numbers in the range 1 to 100, 
# with a limit of 7 guesses per game.

# Note that a game object should start a new game with a new number to guess with each call to #play.

# number of guesses
# number

class GuessingGame

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
    @number_of_guesses = 7
    @number_to_guess = (1..100).to_a.sample
  end

  def prompt_guess
    puts "You have #{number_of_guesses} guesses remaining."
    loop do
      puts "Enter a number between 1 and 100:"
      self.guess = gets.chomp.to_i
      break if guess.between?(1, 100)
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

  attr_reader :number_to_guess
  attr_accessor :guess, :number_of_guesses
end

game = GuessingGame.new
game.play