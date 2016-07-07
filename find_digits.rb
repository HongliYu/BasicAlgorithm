#!/bin/ruby

t = gets.strip.to_i
numbers = Array.new

for a0 in (0..t-1)
    n = gets.strip.to_i
    numbers << n
end

for i in 0 ... numbers.length
	number = numbers[i]
	count = 0
	number_digits = numbers[i].to_s.split("")
	for j in 0 ... number_digits.length
		if number_digits[j].to_i == 0
			next
		end
		if (number % number_digits[j].to_i) == 0
			count = count + 1
		end
	end
  puts count
end