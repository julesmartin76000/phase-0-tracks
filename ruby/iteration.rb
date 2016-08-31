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
