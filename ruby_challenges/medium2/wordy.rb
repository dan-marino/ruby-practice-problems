class WordProblem
  attr_accessor :arr, :holder

  OPERATORS = { "plus" => :+, "minus" => :-,
                "multiplied" => :*, "divided" => :/}

  def initialize(str)
    @arr = tidy(str.split)
    raise ArgumentError unless invalid?
    @holder = arr.shift.to_i
  end

  def tidy(str)
    str.shift(2)
    str.reject! { |word| word == 'by' }
    str
  end

  def invalid?
    arr.all? { |elm| elm =~ /\d/ || OPERATORS.include?(elm) }
  end

  def answer
    arr.each_slice(2) do |subarr|
      self.holder = holder.send OPERATORS[subarr.first], subarr.last.to_i
    end
    holder
  end
end
