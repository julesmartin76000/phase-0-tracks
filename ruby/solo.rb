def vowel_adv(str)
#create 2 arrays, one with the vowels, the other with the consoants
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