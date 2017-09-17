#!/bin/ruby

def solve(year)
	if year < 1918
		if year % 4 == 0
			return "12.09.#{year}"
		else
			return "13.09.#{year}"
		end			
	else
		if year == 1918
			return "26.09.#{year}"
		end
		if year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
			return "12.09.#{year}"
		else
			return "13.09.#{year}"
		end
	end
end

year = gets.strip.to_i
result = solve(year)
puts result;
