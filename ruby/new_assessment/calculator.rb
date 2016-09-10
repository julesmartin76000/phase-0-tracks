# Question 2 + 3
def calculate(integer_1, operator, integer_2)
	if operator == "+"
		result = integer_1 + integer_2
		p result
	elsif operator =="-"
		result = integer_1 - integer_2
	elsif operator == "*"
		result = integer_1 * integer_2
		p result
	else operator == "/"
		result = integer_1. / integer_2
		p result
	end
end

puts "Choose one integer, then one operator and the last integer"
integer_3 = gets.chomp.to_f
operator_1 = gets.chomp
integer_4 = gets.chomp.to_f
calculate(integer_3, operator_1, integer_4)

#Question 4
# Question 2 + 3


#Question 4

loop do
	
puts "Choose one integer, then one operator and the last integer"
def calculate(integer_1, operator, integer_2)
	if operator == "+"
		result = integer_1 + integer_2
		p result
	elsif operator =="-"
		result = integer_1 - integer_2
	elsif operator == "*"
		result = integer_1 * integer_2
		p result
	else operator == "/"
		result = integer_1. / integer_2
		p result
	end
end

integer_3 = gets.chomp.to_f
operator_1 = gets.chomp
integer_4 = gets.chomp.to_f
calculate(integer_3, operator_1, integer_4)
puts "Enter espace to make another calculation or type done if ended"
again=gets.chomp 

break if again == "done"

end

#Code internet qui marche très bien
performed_calculations = []

# counter = 0
counter = -1
loop do
 puts ""
 puts "To continue press 'Enter' key. To stop type 'done'"
   response = gets.chomp
 counter += 1

break if response == 'done'

def calculate(x,y,z)
	
 if y == '+'
   r = x + z
 elsif y == '-'
   r = x - z
 elsif y == '*'
   r = x * z
 elsif y == '/'
   r = x / z
 end
 return r
end
     
# driver code
# p calculate(4, '+', 5)
# p calculate(4, '-', 5)

puts "Please give us your first integer:"
 x=gets.chomp.to_i
# loop do 
puts "Please tell us what would you like to do? Type one of these operators '-','+','*' or '/' "
 y = gets.chomp

if    y == '+'
   puts "Great!You want to add."
 elsif y == '-' 
   puts "Great!You want to subtract."
 elsif y ==  '*'
   puts "Great!You want to multiply."
 elsif y == '/'
   puts "Great!You want to divide."
else
  puts "!!!!FATAL ERROR!!!! \n Sorry no calculation will be performed this time."
end


puts "Please give us your 2nd integer:"
 z = gets.chomp.to_i

#transform the result of the operation into a string 
puts "You did the following calculation:"
 result = calculate(x,y,z).to_s
puts "#{x} #{y} #{z} = #{result}"

performed_calculations << [x,y,z, result]

end

#count and display the number of operations
puts "="*25
puts "#{counter} calculations performed:"

performed_calculations.each do |x| 
 puts "#{x[0]} #{x[1]} #{x[2]} = #{x[3]}"
  end
