n = gets.strip.to_i
height = gets.strip
height = height.split(' ').map(&:to_i)

max_height = height[0]
ret_number = 1

for i in 1...n
  if height[i] > max_height
  	max_height = height[i]
  	ret_number = 1
	elsif height[i] == max_height
		ret_number = ret_number + 1
  end
end

puts ret_number