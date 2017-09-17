#!/bin/ruby

def solve(n, s, d, m)
	result = 0
	for i in 0...n
		temp_sum = 0
		for j in i...(i+m)
			temp_sum = temp_sum + s[j].to_i
		end
		if temp_sum == d 
			result = result + 1
		end
	end
	return result
end

n = gets.strip.to_i
s = gets.strip
s = s.split(' ').map(&:to_i)
d, m = gets.strip.split(' ')
d = d.to_i
m = m.to_i
result = solve(n, s, d, m)
puts result;
