# game class

class WordGame
  attr_reader :guess_word
	
  def initialize
    @secret_word = "unicorn"
    @secret_word = @secret_word.split('')
  end
  
 def letter_match?(letter)
    if @secret_word.include?(letter)
      return true; end
    return false
  end

end

# user interface

puts "Welcome to the Word Game!"
game = WordGame.new
p game

puts "Pick a word randomly please"
guess = gets.chomp 
guess = guess.split('')

#each letter in the string input should match with the letter into the secret word, whatever its place. 1/ compare each letter 
if guess = game 
end

letter = []
guess.each do |x|
	if game.include?()
end


####### example working

word = nil      #no word or letters yet
tries = 0       #setting the tries to zero
letter = nil 

puts "This is a game for 2. Player 1 writes which word they want player 2 to guess."
puts "Player 1, write a word: "
word = gets.chomp
letters = []
letters = word.split(//)
progress = ["_ " * letters.length]
puts progress
puts "Player 2, guess a letter: "


def check_and_print(letters, guessed)
  won = true

  # Print letters accordingly
  letters.each do |l|
    if guessed.include? l
      print l
    else
      print '_ '
      won = false
    end
  end

  # Insert a line break
  puts ""

  return won
end

while tries < 10 || letters.length == 0
    letter = gets.chomp
    if letters.include? letter
        puts "You guessed one letter!"
        guessed << letter
        won = check_and_print(letters, guessed)

        # Check if the user won
        if won
          puts "You won!!"
          break
        end
    else
        puts "Nope, sorry."
        tries += 1
        puts "You have " + (10 - tries).to_s + " left"
    end
end
