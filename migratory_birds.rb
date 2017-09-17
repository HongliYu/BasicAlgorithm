#!/bin/ruby

def migratoryBirds(n, ar)
	birds = {}
	for i in 0...n
		currentType = ar[i].to_i
		if birds[currentType] != nil
			next
		end
		count = 0
		for j in 0...n
			if currentType == ar[j].to_i
				count = count + 1
			end
		end
		birds[currentType] = count
	end
	max_number = 0
	max_index = 0
	birds.each do |key, value|
		if value >= max_number
			max_number = value
			max_index = key
		end
	end
	return max_index
end

n = gets.strip.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = migratoryBirds(n, ar)
puts result;
