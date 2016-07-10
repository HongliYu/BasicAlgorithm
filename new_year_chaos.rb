#!/bin/ruby

samples = Array.new

class DemoClassA
   def initialize(n, q)
    	@n = n
      @q = q
   end
   def getQ
      @q
   end
   def getN
      @n
   end
end

T = gets.strip.to_i
for a0 in (0..T-1)
    n = gets.strip.to_i
    q = gets.strip
    q = q.split(' ').map(&:to_i)

    demo = DemoClassA.new(n, q)
		samples << demo
end

for k in 0 ... samples.length
 sample = samples[k]
 q = sample.getQ
 n = sample.getN

 need_iterator = true
	for i in 0 ... q.length
		if q[i] - (i + 1) > 2
			puts "Too chaotic"
			need_iterator = false
			break
		end
	end

	if need_iterator
		count = 0
		for i in 0 ... q.length
			for j in (i+1)... q.length
				if q[i] > q[j]			
					temp = q[i]
					q[i] = q[j]
					q[j] = temp
					count = count + 1
				end
			end
		end
	puts count
	end
end


