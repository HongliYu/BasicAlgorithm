#!/bin/ruby

n = gets.strip.to_i
A = gets.strip.split(' ').map(&:to_i)

array = Array.new()

for i in 0...A.length

	for j in (i + 1)...A.length
		if A[i] == A[j]
		array << (i - j).abs
			
		end

	end

end

if !array.empty?
	puts array.min
else
	puts "-1"
end
