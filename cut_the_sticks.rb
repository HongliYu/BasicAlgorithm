n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

def recursive_sticks(arr)
	min_length = arr.min
	ret_array = Array.new
	count = 0
	for i in 0...arr.length
		if arr[i] != min_length
			element = arr[i] - min_length
			ret_array << element
			count = count + 1
		end
	end
	if ret_array.length == 0
		return
	end
	puts count
	recursive_sticks(ret_array)
end

puts arr.length
recursive_sticks(arr)
