#!/bin/ruby

t = gets.strip.to_i
array = Array.new
for a0 in (0..t-1)
  n = gets.strip.to_i
  array << n
end

for i in 0..t
  number = array[i].to_i
  ret_string = ""
  if number % 3 == 0
  	for j in 0...number
  		ret_string = ret_string + "5"
	end
		puts "#{ret_string}"
	else
		max_m = (number / 3.0).ceil
		ret_count = 0
		while max_m >= 0
			if (number - 3 * max_m) % 5 == 0
				ret_count = ret_count + 1
				for j in 0...(max_m * 3)
		  		ret_string = ret_string + "5"
				end
				for k in 0...(number - max_m * 3)
		  		ret_string = ret_string + "3"
				end
		    break
		  end
		  max_m = max_m - 1
		end
		if ret_string != ""
			puts "#{ret_string}"
		else
			puts "-1"
		end
  end
end
