### My program doesn't work but it's the best thing I was able to do by myself.

# game class

class WordGame
  attr_accessor :secret_word, :guess_word
  attr_reader :guess_count
  
  def initialize
    @secret_word = secret_word
    @guess_word = ["-", "-", "-", "-", "-"]
    @guess_count = 2
  end
 
  
def letter_match(x)
  @x = x
    @secret_word.each_with_index do |character, i|
       if character == x.downcase 
         @secret_word[i] = x.downcase
            guess_word[i] = x
            end
            p @guess_word
    end
end

end
# user interface


puts "Welcome to the Hangman game"
game = WordGame.new 
puts "Pick a word randomly please"
game.secret_word = gets.chomp
game.secret_word = game.secret_word.split('')
progress = ["_ " * game.secret_word.length]
puts "Player 2, guess a letter: "
tries = 0

while tries = game.secret_word.length
letter = gets.chomp 
if game.secret_word.include?(letter)
  game.letter_match(letter)
  
  puts "You guessed one letter!"
  puts "Guess another letter buddy"
else
        puts "Nope, sorry."
        tries += 1
        puts "You have " + (game.secret_word.length - tries).to_s + " left"
    end
end

    
    
