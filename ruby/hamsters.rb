puts "What is the hamster name ?"
name = gets.chomp
puts "
On a scale from 1-10, what is the hamsters noise volume? (please enter a number)"
volume = gets.chomp.to_i
puts "What is the fur color ?"
fur = gets.chomp
puts "Is the hamster a good candidate for adoption? (yes/no)"
candidate = gets.chomp
puts "Estimated age of hamster: "
age= gets.chomp.to_i
if age == ""
	then age = nil
end

puts "Hamster's data"
puts "Hamster's name is #{name}"
puts "Hamster's volume is #{volume}"
puts "Fur color is #{fur}"
puts "Hamster's age is #{age}"
puts "Is the hamster a good candidate for adoption? : #{candidate} "