def your_name
	puts "Hey, what is your full name?"
	first_name=gets.chomp
	last_name=gets.chomp
	yield (first_name, last_name)
end

your_name {|first_name, last_name| puts "Okay, so your full name is #{first_name} #{last_name}"} 


colours = {"blue" => 'sky', "red" => 'blood', "green" => 'apple'}

colours.each do |colour, word|
	p "#{colour} is for #{word}"
end

colours = ["blue", "red", "green"]

colours.map! do |colour|
	puts colour 
	colour.upcase 
end 

#release 2
#question 1
number = []
puts "Give us a number!"

loop do	
	puts "Give us another number (or type '10' to exit):"
	input = gets.chomp.to_i
	number.reject! {|x| x >= 5}
	break if input == 10
	number << input
end

puts "Here are the numbers less than 5:"
puts number

#question 2
number = []
puts "Give us a number!"

loop do	
	puts "Give us another number (or type '0' to exit):"
	input = gets.chomp.to_i
	number.select! {|x| x >= 5}
	break if input == 0
	number << input
end

puts "Here are the numbers greater than 5:"
puts number

#question 3
number = {
	"age" => 5,
	"age_2" => 10,
	"age_3" => 6,
	"age_4" => 12
}

#question 4
number.select! {|k,v| v < 8}
p number
