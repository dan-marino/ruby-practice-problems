def buy_fruit(arr)
  food = []
  arr.each do |subarr|
    subarr[1].times { food << subarr[0]}
  end
  food
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]