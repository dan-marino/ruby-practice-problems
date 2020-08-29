# input string
# output string
# set count to the size of the string
# set ERROR_SET to "0" * 10
# invalid if count < 10 || count > 12 || count == 11 && str[0] == 1
# When invalid is true return ERROR_SET
# str.slice(0)if num[0] == 1 && count == 11
# return str

require 'pry'

class PhoneNumber
  attr_reader :str, :stripped_str

  ERROR_SET = "0" * 10

  def initialize(str)
    @str = str
    @stripped_str = str.scan(/[0-9]/).join
  end

  def number
    count = stripped_str.size
    return ERROR_SET if invalid?(count)
    stripped_str.slice!(0) if count == 11
    stripped_str
  end

  def area_code
    stripped_str.slice(0, 3)
  end

  def invalid?(cnt)
    cnt < 10 || cnt > 11 || str.match(/[a-z]/i) ||
    (cnt == 11 && stripped_str[0] != '1')
  end

  def to_s
    number
    ac = "(#{area_code})"
    three = " #{stripped_str.slice(3, 3)}-"
    four = "#{stripped_str.slice 6, 4}"
    ac + three + four
  end

end