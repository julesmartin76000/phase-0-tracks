#practice assessment week 5

array = []
counter = 0
puts "Welcome to our calculator. Make your first operation "
loop do 
	
puts "Choose an integer, an operator and another integer"
x = gets.chomp.to_i 
operator = gets.chomp 
y= gets.chomp.to_i 

	def calculate(x,operator,y)
	
		case operator 
			when "+"
			result = x + y 
			when "-"
			result = x - y 
			when "*"
			result = x*y 
			when "/"
			result = x/y 
		end
		 result 
	end

counter +=1
answer = calculate(x,operator,y).to_s
puts "#{x} #{operator} #{y} = #{answer}"
array << [x,operator,y, answer]
p array
puts "Press enter do make another operation or 'done' if finished"
exit = gets.chomp 

break if exit == "done"
end 

puts "#{counter} calculations performed:"
array.each do |result| puts "the result is #{result[0]} #{result[1]} = #{result[2]} #{result[3]}" end 