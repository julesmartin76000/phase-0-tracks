
puts "What is your name ?"
name = gets.chomp

puts "How old are you ?"
age = gets.chomp.to_i

puts "How many children do you have ?"
children = gets.chomp.to_i

puts "choose a decor theme "
theme = gets.chomp

designer_application = {
	'Name': "#{name}",
	'Age': "#{age}",
	'Number of children': "#{children}",
	'Theme choosen': "#{theme}"
}

puts "Do you want to update something ? (yes/no)"
update = gets.chomp
if update == "no"
	puts designer_application
else 
	puts "What do you want to change ?"
	change = gets.chomp
	case change
		when name 
		puts "Again, what is your name ?"
		designer_application['Name':]=  gets.chomp
		when age
		puts 
		when children
		puts 
		when theme 
		else 
	end
	
end 


