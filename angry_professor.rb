#!/bin/ruby

t = gets.strip.to_i
for a0 in (0..t-1)
  n, k = gets.strip.split(' ')
  n = n.to_i
  k = k.to_i
  a = gets.strip
  a = a.split(' ').map(&:to_i)

  student_count = 0
	for i in 0..n
		if a[i].to_i <= 0
			student_count = student_count + 1
		end
	end
	if student_count <= k
		puts "YES"
	else
		puts "NO"
	end
end