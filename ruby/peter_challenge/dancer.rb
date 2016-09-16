class Dancer
	attr_reader :name
	attr_accessor :age, :card

def initialize(name, age)
	@name = name
	@age = age
	@card = []
end

def pirouette
	p "*twirls*"
end 

def bow 
	p "*bows*"
end

def queue_dance_with(name)
	@card << name
end

def begin_next_dance 
	partner = @card.delete_at(0)
	p "Now dancing with #{partner}."
end 

end

dancer = Dancer.new("Misty Copeland", 33)
