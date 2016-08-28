puts "How many employees will be processed ?"
employee = gets.chomp.to_i

i=1
while i<=employee 

	puts "what is your name ?"
	name =gets.chomp
	puts "what is the current year ?"
	year =gets.chomp.to_i
	puts "How old are you ?"
	age =gets.chomp.to_i
	puts "What year were you born?"
	born =gets.chomp.to_i
	puts "Our company cafeteria serves garlic bread. Should we order some for you ? (y/n)"
	garlic_bread =gets.chomp
	puts "Would you like to enroll in the company’s health insurance ? (y/n)"
	insurance =gets.chomp



	if name =="Drake Cula"
		true_name= false 
	elsif name == "Tu Fang"
		true_name= false
	else true_name= true
	end 
	
	if age == year - born
		wolves_live_less=true
	else
		wolves_live_less=false
	end
	
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

	if wolves_live_less && wolves_like_garlic && wolves_need_insurance
		puts "Probably not a vampire."
	elsif wolves_like_garlic || wolves_need_insurance || sunshine
		puts "Probably a vampire."
	elsif 
		puts "Almost certainly a vampire."
	end 
i+=1 
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

