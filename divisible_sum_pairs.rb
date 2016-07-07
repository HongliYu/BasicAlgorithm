#!/bin/ruby
n, k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

ret_count = 0
for i in 0...(a.length)
	for j in i...(a.length)
    if i == j
			next
		end
		if (a[i] + a[j]) % k == 0
			ret_count = ret_count + 1
		end
	end
end
puts ret_count