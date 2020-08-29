def letter_case_count(str)
  count_hsh = {}

  count_hsh[:lowercase] = str.chars.select do |elem|
    elem =~ /[a-z]/
  end.count

  count_hsh[:uppercase] = str.chars.select do |elem|
    elem =~ /[A-Z]/
  end.count

  count_hsh[:neither] = str.chars.select do |elem|
    elem =~ /[^A-Za-z]/
  end.count

  count_hsh
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

def letter_case_count(str)
  count_hsh = { lowercase: 0, uppercase: 0, neither: 0 }

  str.chars.each do |elem|
    if elem =~ /[a-z]/
      count_hsh[:lowercase] += 1 
    elsif elem =~ /[A-Z]/
      count_hsh[:uppercase] += 1
    elsif elem =~ /[^A-Za-z]/
      count_hsh[:neither] += 1
    end
  end

  count_hsh
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
