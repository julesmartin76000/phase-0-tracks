puts "What is the hamster name ?"
name = gets.chomp
puts "On a scale from 1-10, what is the hamsters noise volume? (please enter a number)"
volume = gets.chomp.to_i
puts "What is the fur color ?"
flur = gets.chomp
puts "Is the hamster a good candidate for adoption? (yes/no)"
candidate = gets.chomp
puts "Estimated age of hamster"
age= gets.chomp.to_i
if age == ""
	then age = nil
	age == "unknown"
end

puts "Hamster's data :"
puts "Hamster's name is #{name}"
puts "Hamster's volume is #{volume}"
puts "Flur color is #{flur}"
puts "Is the hamster a good candidate for adoption? : #{candidate} "
puts "Hamster's age is #{age}"