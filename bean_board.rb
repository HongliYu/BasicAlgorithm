class Bean
   def initialize(name, x, y)
    	@name = name
    	@x = x
    	@y = y
   end
   def get_name
      @name
   end
   def set_name(name)
      @name = name
   end
   def set_x(x)
      @x = x
   end
   def get_x
      @x
   end
   def set_y(y)
      @y = y
   end
   def get_y
      @y
   end
end

# white surrounded by black
def check_if_bean_is_surrounded(beanA, beanB, board_size, board) 
captured = false
for i in 0...board_size
	for j in 0...board_size
		current_bean = board[i][j]
		
		if current_bean.get_name == beanA
			# search 4 direction

			# top
			top_surrended = true
			if i - 1 > 0
				for k in (i - 1)..0
					bean = board[k][j]
					if bean.get_name == "empty"
						top_surrended = false
						break
					end
					if bean.get_name == beanB
						top_surrended = true
						break
					end

				end
			end

			# bottom
			bottom_surrended = true
			if i + 1 > 0
				for k in (i + 1)..board_size
					bean = board[k][j]
					if bean.get_name == "empty"
						bottom_surrended = false
						break
					end
					if bean.get_name == beanB
						bottom_surrended = true
						break
					end
				end
			end

			# left
			left_surrended = true
			if j - 1 > 0
				for k in (j - 1)..0
					bean = board[i][k]
					if bean.get_name == "empty"
						left_surrended = false
						break
					end
					if bean.get_name == beanB
						left_surrended = true
						break
					end
				end
			end

			# right
			right_surrended = true
			if j + 1 > 0
				for k in (j + 1)..board_size
					bean = board[i][k]
					if bean.get_name == "empty"
						right_surrended = false
						break
					end
					if bean.get_name == beanB
						right_surrended = true
						break
					end
				end
			end

			if top_surrended && bottom_surrended && left_surrended && right_surrended
				captured = true
			else
				captured = false
				break
			end
		end
	end
end

return captured

end

# it's square, input positive integer n as border size
board_size = gets.strip.to_i

# input x,y position to init beans like: 1,2 3,4 5,5 
wihte_beans_position_array = gets.strip.split(' ')
wihte_beans = Array.new

black_beans_position_array = gets.strip.split(' ')
black_beans = Array.new

board = Array.new
for i in 0...board_size
	board_column = Array.new
	for j in 0...board_size
		bean = Bean.new("empty", i, j)
		board_column[j] = bean
	end
	board[i] = board_column
end

for i in 0...wihte_beans_position_array.length
	positions = wihte_beans_position_array[i].split(',')
	x = positions[0]
	y = positions[1]
	white_bean = Bean.new("white", x, y)
	board[x.to_i][y.to_i] = white_bean
end

for i in 0...black_beans_position_array.length
	positions = black_beans_position_array[i].split(',')
	x = positions[0]
	y = positions[1]
	black_bean = Bean.new("black", x, y)
	board[x.to_i][y.to_i] = black_bean
end

captured = check_if_bean_is_surrounded("white", "black", board_size, board)
puts "captured: #{captured}"




