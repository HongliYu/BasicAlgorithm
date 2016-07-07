n1, n2, n3 = gets.strip.split(' ')
n1 = n1.to_i
n2 = n2.to_i
n3 = n3.to_i
h1 = gets.strip
h1 = h1.split(' ').map(&:to_i)
h2 = gets.strip
h2 = h2.split(' ').map(&:to_i)
h3 = gets.strip
h3 = h3.split(' ').map(&:to_i)

h_array = Array.new
h_array << h1
h_array << h2
h_array << h3

sum1 = 0
for i in 0...n1
	sum1 = sum1 + h1[i]
end
sum2 = 0
for i in 0...n2
	sum2 = sum2 + h2[i]
end
sum3 = 0
for i in 0...n3
	sum3 = sum3 + h3[i]
end

sum_array = Array.new
sum_array << sum1
sum_array << sum2
sum_array << sum3

max_sum = sum_array.max

max_sum_index = 0
for i in 0...(sum_array.length)
	if sum_array[i] == max_sum
		max_sum_index = i
		break
	end
end

selected_sum = sum_array[max_sum_index]
selected_h = h_array[max_sum_index]

# puts "$$$$$$ sum_array #{sum_array}"

h_array.delete_at(max_sum_index)
sum_array.delete_at(max_sum_index)

temp_sum = selected_sum
k1 = 0
k2 = 0
inner_sum1 = sum_array[0]
inner_sum2 = sum_array[1]

for i in 0..(selected_h.length)

	find1 = false
	find2 = false
	puts "temp_sum #{temp_sum}"
	# puts "sum_array #{sum_array}"

	for j in k1..(h_array[0].length)
			# puts "inner_sum1 #{inner_sum1}"

		if inner_sum1 == temp_sum
			find1 = true
			if j >= 0
			  k1 = j
			end
			break
		end
		if inner_sum1 < temp_sum
			find1 = false
			if j >= 0
			  k1 = j 
			end
			break
		end
		if j < h_array[0].length
		  inner_sum1 = inner_sum1 - h_array[0][j]
		end
	end

	for j in k2..(h_array[1].length)
		# puts "inner_sum2 #{inner_sum2}"

	  if inner_sum2 == temp_sum
			find2 = true
		  if j >= 0
			  k2 = j
			end
			break
		end
		if inner_sum2 < temp_sum
			find2 = false
			if j >= 0
			  k2 = j
			end
			break
		end
		if j < h_array[1].length
				inner_sum2 = inner_sum2 - h_array[1][j]
		end
	end

	if find1 && find2
		puts temp_sum
		break
	end

	if i < selected_h.length
		temp_sum = temp_sum - selected_h[i]
	end

end





