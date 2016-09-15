#Method 1 : my method 

def vowel_adv(str)
#create 2 arrays, one with the vowels, the other with the consonants
  vowels = ["a", "e", "i", "o", "u", "a", " ", " "]
  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  
# reverse the first and last name 
	str = str.split(' ')
	str = str.reverse
	str = str.join(' ')
	str = str.downcase

# transform each string into array and analyse, for each parameter, if it is a consonant or a vowel.
	  str = str.split('')
	  str_new = str.map do |letter|
	    if vowels.include?(letter)
	      vowels.rotate(1)[vowels.index(letter)]
	    else consonants.include?(letter)
	      consonants.rotate(1)[consonants.index(letter)]
	    end
	  end
	  str_new.join
end

puts "What are your first and last name ?"
name = gets.chomp

vowel_adv(name).split.each{|i| i.capitalize!}.join(' ')

#Method 2 simpler 

#Ask user for one or more names. When user type quit - loop ends.
puts "You all are in process of changing your names into incognito names."
name_array =[]
loop do
	puts "Please, provide some of your real names (type 'quit' when done):"	
	name = gets.chomp.downcase
	name_array << name
	break if name == "quit"
end
#return an array		
name_array
#ierate through given array. Change vowels and consonats in a string	
		name_array.each { |name|
		name.tr!("aeiou", "eioua") 
 		name.tr!("bcdfghjklmnpqrstvwxyz", "cdfghjklmnpqrstvwxyzb")
		}
#delete last value from the array (word "done")
name_array.delete_at(-1)
#set values in a context
name_array.each do |name|
	puts "Your new name is #{name.upcase.split.reverse.join(' ')}!"
end

