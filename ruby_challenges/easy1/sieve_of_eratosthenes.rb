class Sieve
  attr_reader :num
  def initialize(num)
    @num = num
  end

  def primes
    primes = []
    composites = []

    2.upto(num) do |nmbr|
      next if composites.include?(nmbr)
      range = ((nmbr * 2)..num)

      range.step(nmbr) { |elm| composites << elm }
      primes << nmbr
    end
    primes
  end
end
