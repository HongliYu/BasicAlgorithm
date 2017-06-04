#!/bin/ruby

def solve(a0, a1, a2, b0, b1, b2)

	arrayA = [a0, a1, a2]
	arrayB = [b0, b1, b2]
	result = [0, 0]

	arrayA.each_with_index {
		|val, index|
		if val > arrayB[index]
			temp = result[0]
			temp = temp + 1 
			result[0] = temp
		end 
		if val < arrayB[index]
			temp = result[1]
			temp = temp + 1 
			result[1] = temp
		end
	}

  return result 

end

a0, a1, a2 = gets.strip.split(' ')
a0 = a0.to_i
a1 = a1.to_i
a2 = a2.to_i
b0, b1, b2 = gets.strip.split(' ')
b0 = b0.to_i
b1 = b1.to_i
b2 = b2.to_i
result = solve(a0, a1, a2, b0, b1, b2)
print result.join(" ")

