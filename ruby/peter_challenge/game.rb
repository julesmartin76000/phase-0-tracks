#Pseudocode
	#promt for word
	#turn word into array
	#make an array that is an underscore version of the array
	#set the number of guesses that the user is allowed
	#promt for guess, informing User2 how many guesses they have to unveil the word
	#if word array contains the guess, give feedback that is the
		#altered underscore array
	#repeat until guesses are used up
	#give a 'congratulations' or 'you lost' message

class Game

	attr_reader :answer_array
	attr_accessor :feedback_array
	attr_accessor :guesses_for_user2
	def initialize
		@answer_array = []
		@feedback_array = []
		@guesses_for_user2 = nil
	end

	def word_to_array(string)
		@answer_array = string.split('')
	 	@answer_array
	end

	def underscore_array
		underscore = "_"
		(@answer_array.length).times do
			@feedback_array << underscore
		end
	end

	def number_of_guesses(array)
		@guesses_for_user2 = array.length
		@guesses_for_user2
	end

	def check_if_correct(guess_letter)
		if @answer_array.include?(guess_letter)
			#index_of_answer_letter = @answer_array.index(guess_letter)
			@answer_array.each_with_index do |val, index|
				@feedback_array[index] = guess_letter if val == guess_letter
			end
		 end
		p @feedback_array
	end

	def guesses_decreaser
		@guesses_for_user2 = @guesses_for_user2 - 1
	end

	def game_continuation
		until @guesses_for_user2 == 0 
			self.guesses_decreaser
			puts "User2, you have #{@guesses_for_user2} guesses left. Guess another letter."
			next_guess = gets.chomp
			self.check_if_correct(next_guess)
			break if @feedback_array == @answer_array
		end
		self.check_for_win
	end

	def check_for_win
		if @feedback_array == @answer_array
			puts "That's the word, User2 wins!"
		else puts "User2, you have been defeated :("
		end
	end

end
puts "Welcome to the word game! Please make your terminal window very small."
puts "User1, give me a word that User2 will guess letter-by-letter."
#	word = gets.chomp
puts "


"

first_game = Game.new
first_game.word_to_array("hello")
first_game.underscore_array
first_game.number_of_guesses(first_game.answer_array)

puts "User2, guess a letter that is contained in User1's word."
	#guess1 = gets.chomp
first_game.check_if_correct("j") 
first_game.game_continuation