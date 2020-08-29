# set arr to empty arr
# 
# counter = 2
# loop until primes arr == num
#   iterate through prime in primes
#     if counter % prime != 0 each time, add it to primes
#    end
# end
# if it's prime, put it in prim

require 'pry'
class Prime

  def self.nth(num)
    raise ArgumentError if num < 1
    primes = [2]

    count = 3
    until primes.size == num
      primes << count if prime?(count)
      count += 2
    end
    primes.last
  end

  def self.prime?(number)
    (2..Math.sqrt(number)).each do |elm|
      return false if number % elm == 0
    end
  end
end

p Prime.nth(10_001)