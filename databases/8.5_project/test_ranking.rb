require 'ranking'

class Ranking


end 
ranking = Ranking.new
ranking << :foo
ranking << :bar

ranking.inc(:foo, 2)      # Incremente score of :foo by one
ranking.dec(:bar)         # Decrement, defaults to 1
ranking.score(:baz, 3)    # Set score explicitly, implicitly adds :baz to the set

ranking.to_a              # => [:baz, :foo, :bar]
ranking.scores[:foo]  
