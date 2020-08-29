require 'pry'

def merge(arr1, arr2)
  big_arr = arr1 + arr2
  sorted_arr = []

  until big_arr.empty?
    saved_num = big_arr.shift
    if big_arr.all? { |num| num >= saved_num }
      sorted_arr << saved_num
    else
      big_arr.push(saved_num)
    end
  end
  sorted_arr
end

def merge_sort(arr)
  return arr if arr.size == 1

  subarr1 = merge_sort(arr[0...arr.size/2])
  subarr2 = merge_sort(arr[arr.size/2..-1])

  merge(subarr1, subarr2)
end


p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]