require 'pry'

def staggered_case(str)
  stag = []
  i = 1

  str.chars.each do |elem|
    if elem =~ /[^a-z]/i
      stag << elem
    elsif i.odd?
      stag << elem.upcase
      i += 1
    elsif i.even?
      stag << elem.downcase
      i += 1
    end
  end
  stag.join
end


p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'