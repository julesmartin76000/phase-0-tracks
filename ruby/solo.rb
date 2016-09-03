#enter a name 

# Swapping the first and last name.
#name = name.split(' ')

#Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet.

puts "What are your first and last name ?"
name = gets.chomp
name = name.split('')
vowels = "aeiou"
index = 0 
name = name.to_s

	if vowels.include?(name)
		name.map! { |name| name.next }
	else
	end 
		

#letters = "hello world".split('')
#letters.class
#letters.map! { |letter| letter.next }
		


