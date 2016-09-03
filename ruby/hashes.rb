puts "What is your name ?"
name = gets.chomp

puts "How old are you ?"
age = gets.chomp.to_i

puts "How many children do you have ?"
children = gets.chomp.to_i

puts "choose a decor theme "
theme = gets.chomp

designer_application = {
	Name_1: "#{name}",
	Age: "#{age}",
	Number_of_children: "#{children}",
	Theme_choosen: "#{theme}"
}

puts "Do you want to update something ? (yes/no)"
update = gets.chomp
if update == "no"
	puts designer_application
else 
	puts "What do you want to change ?"
	change = gets.chomp
	case change
		when "name" then puts "Again, what is your name ?"
		designer_application[:Name_1] =  gets.chomp.to_sym 
		when "age" then puts "Again, how old are you ?"
		designer_application[:Age] = gets.chomp.to_sym
		when "number of children" then puts "Again, How many children do you have ?"
		designer_application[:Number_of_children] = gets.chomp.to_sym
		when "theme"  then puts "Again, Choose a decor theme please."
		designer_application[:Theme_choosen] = gets.chomp.to_sym
		else 
			puts "I did not understand. Choose between name, age, number of children, theme"
	end
	puts designer_application
end 


