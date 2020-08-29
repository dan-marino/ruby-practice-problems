def count_occurrences(vehicles)
	occurences = Hash.new(0)

	vehicles.each do |auto|
		occurences[auto] += 1
	end
	occurences
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

p count_occurrences(vehicles)