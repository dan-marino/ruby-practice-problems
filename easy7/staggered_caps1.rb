require 'pry'

def staggered_case(str)
  count = 0
  stag = [str[count].upcase]

  until count == str.size - 1
    count += 1
    if str[count] =~ /\W/
      stag << str[count]
    elsif count.odd?
      stag << str[count].downcase
    elsif count.even?
      stag << str[count].upcase
    end
  end
  stag.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

