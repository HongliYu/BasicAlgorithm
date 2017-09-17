#!/bin/ruby

def getTotalX(a, b)
    # Complete this function
end

n, m = gets.strip.split(' ')
n = n.to_i
m = m.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
b = gets.strip
b = b.split(' ').map(&:to_i)

maxA = a.max
minB = b.min
retCount = 0

for i in maxA..minB
	passTestA = false
	passTestB = false

	for j in 0...n
		# puts "a[j] #{a[j]}"
		if i % a[j] != 0 
			passTestA = false
			break
		else
			passTestA = true
		end
	end

	if passTestA == true
		for k in 0...m
			# puts "b[k] #{b[k]}"
			if b[k] % i != 0 
				passTestB = false
				break
			else
				passTestB = true
			end
		end
	end

	if passTestA && passTestB
		retCount = retCount + 1
	end

end

puts retCount