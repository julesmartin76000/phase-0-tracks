# I paired with Jules Martin

class Puppy

  def initialize
  	puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(x)
  	x.times { |x| puts "Woof!" }
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(hum_years)
  	hum_years = 7 * hum_years
  end

  def sit
  	puts "*sits*"
  end

end

class Teacher

	def initialize
		puts "Initializing a new teacher instance..."
	end

	def rollcall
		puts "Please raise your hand when I call your name."
	end

	def assign_homework(num_assign)
		puts "*Assigns #{num_assign} homework assignments!*"
	end

end

name_counter = 1
counter = 0
instances = []
while counter < 50
	name = name_counter.to_s
	#puts "#{name}"
	#teacher_name = "Teacher number #{name}"
	name = Teacher.new 
	instances << name 
	counter += 1
	name_counter.to_i
	name_counter += 1
end

################################
#Driver Code
################################

#fido = Puppy.new
#fido.fetch("ball")
#fido.speak(3)
#fido.roll_over
#p fido.dog_years(2)
#fido.sit
#########
#The Initialize method will run whenever a new instance is 
#created, but the other methods will only run once we call
#them on the instance.
#########

instances.each do |teach|
	teach.rollcall
	teach.assign_homework(10)
end