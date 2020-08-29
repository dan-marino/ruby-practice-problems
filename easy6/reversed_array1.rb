require 'pry'

def reverse!(arr)
  fcount = 0
  bcount = -1
  duration = arr.size / 2

  until fcount == duration
    arr[fcount], arr[bcount] = arr[bcount], arr[fcount]
    
    fcount += 1
    bcount -= 1
  end
  arr
end

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
list == ["abc"]

list = []
p reverse!(list) == []
list == []