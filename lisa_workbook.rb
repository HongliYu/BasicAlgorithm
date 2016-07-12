nk = gets.strip.split(' ').map(&:to_i)
n = nk[0]
k = nk[1]
chapters = gets.strip.split(' ').map(&:to_i)

ret_count = 0
pages_count = 0
for i in 0...n
	offset = ((chapters[i] * 1.0) / k).ceil
	last_page_elements = chapters[i] % k
	for page in (pages_count + 1)..(pages_count + offset)
    current_offest = page - pages_count
		# 同一章节的，最后一页没有满三个的情况
    if current_offest == offset
    	if last_page_elements > 0
    		if page > (current_offest - 1) * k && page <= ((current_offest - 1) * k  + last_page_elements)
					ret_count = ret_count + 1
				end
				break
    	end
    end

		if page > (current_offest - 1) * k && page <= current_offest * k
			ret_count = ret_count + 1
		end
	end
  pages_count = pages_count + offset
end

puts ret_count
