#!/bin/ruby

s,t = gets.strip.split(' ')
s = s.to_i
t = t.to_i
a,b = gets.strip.split(' ')
a = a.to_i
b = b.to_i
m,n = gets.strip.split(' ')
m = m.to_i
n = n.to_i
apple = gets.strip
apple = apple.split(' ').map(&:to_i)
orange = gets.strip
orange = orange.split(' ').map(&:to_i)

countApple = 0
for i in 0...m
	dropPosition = a + apple[i].to_i
	if dropPosition >= s && dropPosition <= t
		countApple = countApple + 1
	end
end
puts countApple

countOrange = 0
for i in 0...n
	dropPosition = b + orange[i].to_i
	if dropPosition >= s && dropPosition <= t
		countOrange = countOrange + 1
	end
end
puts countOrange
