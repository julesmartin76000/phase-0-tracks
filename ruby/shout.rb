# Release 1
module Shout
    def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
  	words + "!!" + ":)"
end
end


Shout.yell_angrily("no")

# Release 3

module Shout
    def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
  	words + "!!" + ":)"
end
end

class Dad
	include Shout
end

class Mummy
	include Shout
end

dad = Dad.new
p dad.yell_angrily("no")

mummy = Mummy.new
p mummy.yelling_happily("yes")
