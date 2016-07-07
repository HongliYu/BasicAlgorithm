#!/bin/ruby

t = gets.strip.to_i
nms_array = Array.new

t.times {
	nms = gets.strip.to_s
	nms_array << nms
}

nms_array.each do |nms|
	temp_array = nms.split(" ")
	prisoners = temp_array[0].to_i;
	sweets = temp_array[1].to_i;
	prisoner_id = temp_array[2].to_i;
	ret = (prisoner_id - 1 + (sweets % prisoners)) % prisoners
	if ret == 0
		ret = prisoners
	end
	puts ret
end
