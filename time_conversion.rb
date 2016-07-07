time = gets.strip

if time.end_with? "AM"
	time.slice! "AM"
	current_hour = time[0..1].to_i
	if current_hour == 12
		time[0..1] = "00"
	end
end

if time.end_with? "PM"
	time.slice! "PM"
	current_hour = time[0..1].to_i
	if current_hour == 12

	else
		repalce_string = (time[0].to_i * 10 + time[1].to_i + 12).to_s
	  time[0..1] = repalce_string
	end
end

puts time
