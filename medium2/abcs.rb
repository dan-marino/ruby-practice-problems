# a collection of spelling blocks has two letters per block as shown in this list
# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# This limits the words you cna spell with th eblocks to just those words that do not use both letters from any given block
# each block can only be use once.

# write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise

# input string
# output boolean

# case does not matter

# split str into chars
# if char is included

BLOCKS = [
  ['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
  ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
  ['V', 'I'], ['L', 'Y'], ['Z', 'M']
]

def block_word?(str)
  blck = BLOCKS.clone
  str.chars.each do |let|
    return false unless blck.flatten.include?(let.upcase)
    blck.delete blck.assoc(let.upcase)
    blck.delete blck.rassoc(let.upcase)
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true