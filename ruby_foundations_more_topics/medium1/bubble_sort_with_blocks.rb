require 'pry'

def bubble_sort!(arr)
  swaps = -1

  until swaps.zero?
    swaps = 0
    ind = 0

    until ind == arr.size - 1
      if block_given? && !yield(arr[ind], arr[ind + 1])
        arr[ind], arr[ind + 1] = arr[ind + 1], arr[ind]
        swaps += 1
      elsif !block_given? && arr[ind] > arr[ind + 1]
        arr[ind], arr[ind + 1] = arr[ind + 1], arr[ind]
        swaps += 1
      end
      ind += 1
    end
  end
  arr
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [5, 3, 7]
bubble_sort!(array) { |first, second| first >= second }
p array == [7, 5, 3]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = [6, 12, 27, 22, 14]
bubble_sort!(array) { |first, second| (first % 7) <= (second % 7) }
p array == [14, 22, 12, 6, 27]

array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array)
p array == %w(Kim Pete Tyler alice bonnie rachel sue)

array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array) { |first, second| first.downcase <= second.downcase }
p array == %w(alice bonnie Kim Pete rachel sue Tyler)