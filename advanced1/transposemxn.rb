require 'pry'

def transpose(matrix)
  new_matrix = []
  rows = (matrix.count - 1 )
  columns = 0
  matrix.each { |suba| columns = (suba.count - 1) }

  (0..columns).map do |col_index|
    arr = (0..rows).map do |row_index|
      matrix[row_index][col_index]
    end
    new_matrix << arr
  end
  new_matrix
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
