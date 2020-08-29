# write a method that takes a string as argument and returns true if all parentheses
# in the string are properly balanced, false otherise
# to be properly balanced, parentheses must occur in match '(' and ')' pairs

#input string
#output boolean

#keep score of open and closed
# plus one for open
# minus one for closed
# if it returns zero at the end, then we have closed every open one
# return false if we ever go in the negative
# because we will have closed a parenthese before opening it

# set track
# iterate through each character the string
# if it is a ( i will add one to tracker
# if it is a ) i will minus one to tracker
# after every check i will return false if tracker < 0
# return true if tracker is zero

def balanced?(str)
  tracker = 0
  str.chars.each do |elem|
    tracker += 1 if elem == '('
    tracker -= 1 if elem == ')'
    return false if tracker < 0
  end
  tracker.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false