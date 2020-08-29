# i = num
# o = arr
# convert num into an array of digits
# set arr to array of digits
# set index = arr.size + 1
# iterate through digs in array
#   ind -= 1
#   if index is even
#     arr[-index]
#   else
#     new_dig = arr[-index] **2
#     new_dig > 10 ? new_dig -= 9 : new_dig
#   end

require 'pry'

class Luhn
  attr_reader :num
  def initialize(num)
    @num = num
  end
  
  def addends
    arr = num.digits.reverse
    ind = arr.size
    switch = true

    arr.map do |dig|
      ind -= 1
      if switch
        switch = false
        arr[ind]
      else
        switch = true
        new_dig = arr[ind] * 2
        new_dig > 10 ? new_dig -= 9 : new_dig
      end
    end.reverse
  end

  def checksum
    addends.sum
  end

  def valid?
    checksum % 10 == 0
  end

  def self.create(num)
    new_test = num * 10
    new_luhn = new(new_test)
    new_addition = (10 - new_luhn.checksum % 10)
    new_luhn.valid? ? new_test : new_test + new_addition
  end
  
end