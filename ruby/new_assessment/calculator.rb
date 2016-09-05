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
