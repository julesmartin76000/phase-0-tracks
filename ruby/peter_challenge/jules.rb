class Game
   attr_accessor :guess_count, :word_to_guess, :answer
   
   def initialize
    @word_to_guess = []
    @answer = []
    @guess_count = @word_to_guess.length
   end
   
   def word_to_array(string)
    @word_to_guess = string.split('')
    @word_to_guess
  end
   
  def underscore_array
    underscore = "-"
    (@word_to_guess.length).times do
      @answer << underscore
    end
    # @answer
  end

#insert très pratique sinon 
  def check_if_correct(guess_letter)
    if @word_to_guess.include?(guess_letter)
      @word_to_guess.each_with_index do |letter, index| 
        @answer[index] = guess_letter if letter == guess_letter end 
    else 
    end
     p @answer
  end 
  
  def counter_of_guesses
  end 
  
  
end 

game = Game.new
game.word_to_array("hello")
game.underscore_array
#game.answer
game.check_if_correct("h")