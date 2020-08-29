# class variable that keeps track of the names
# 

class Robot
  attr_accessor :name

  @@robot_names = []

  def initialize
    loop do
      @name = new_name
      break unless @@robot_names.include?(@name)
    end
    @@robot_names << @name
  end

  def reset
    self.name = new_names
  end

  private

  def new_name
    (two_rand_letters + three_rand_numbers).join
  end

  def two_rand_letters
    ('A'..'Z').to_a.sample(2)
  end

  def three_rand_numbers
    (0..9).to_a.sample(3).map(&:to_s)
  end
end
