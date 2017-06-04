#!/bin/ruby

def solve(grades)
	ret_array = grades.clone
	for i in 0...grades.length
		if grades[i] < 38 
			next
		end
		offset =  5 - grades[i] % 5
		ceiled_grade = grades[i] + offset
		if ceiled_grade - grades[i] < 3
			ret_array[i] = ceiled_grade
		end
	end
	return ret_array
end

n = gets.strip.to_i
grades = Array.new(n)
for grades_i in (0..n-1)
    grades[grades_i] = gets.strip.to_i
end
result = solve(grades)
print result.join("\n")

