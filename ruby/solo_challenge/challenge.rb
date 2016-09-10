# game class

class WordGame
  attr_accessor :secret_word
  attr_reader :guess_count
  
  def initialize
    @secret_word = secret_word
    @guess_count = 2
  end
  
 def letter_match?(letter)
    if @secret_word.include?(letter)
      return true
    else return false
    end
  end
  
  def require_word
  end

end

# user interface

puts "Welcome to the Hangman game"
game = WordGame.new 
puts "Pick a word randomly please"
game.secret_word = gets.chomp
game.secret_word = game.secret_word.split('')

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
