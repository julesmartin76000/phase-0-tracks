puts "How many employees will be processed ?"
employee = gets.chomp.to_i

i=1
while i<=employee 

	puts "what is your name ?"
	name = gets.chomp
	puts "How old are you ?"
	age = gets.chomp.to_i
	puts "What year were you born?"
	born = gets.chomp.to_i
	puts "Our company cafeteria serves garlic bread. Should we order some for you ? (y/n)"
	garlic_bread = gets.chomp
	puts "Would you like to enroll in the company’s health insurance ? (y/n)"
	insurance = gets.chomp
	
	if garlic_bread == "y"
		wolves_like_garlic = true
	else
		wolves_like_garlic = false
	end
	
	if insurance == "y"
		wolves_need_insurance = true
	else
		wolves_need_insurance = false
	end
	
	sunshine = FALSE

	until sunshine
		puts "Do you have any allergie ? (one at a time, type done when finished)"
		allergies = gets.chomp
		if allergies == "done"
		sunshine = true
		puts "We have recorded your informations"
		elsif allergies == "sunshine"
		sunshine = true 
		else 
		end
	end 

if (name == "Drake Cula") || (name == "Tu Fang")
	puts "Definitely a vampire"
else
	if (age + born == 2016) && wolves_like_garlic && wolves_need_insurance
		puts "Probably not a vampire."
	elsif (age + born) != 2016 || wolves_need_insurance || sunshine
		puts "Probably a vampire."
	elsif 
		puts "Results inconclusive."
	end 
end

i+=1 
end

puts "Name : #{name} "
puts "Age : #{age}"
puts "Do you want some garlic breads ? :#{garlic_bread}"
puts "Do you have any allergies ? :#{allergies}"
puts "Do you want an insurance ? :#{insurance}"

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."