# def move(n, from_array, to_array)
#   to_array << from_array.shift(n)
#   to_array.flatten!
# end

def move(n, from_array, to_array)
  return if n.zero?
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

# the recursive method from the original 
# does not tell the program when to stop
