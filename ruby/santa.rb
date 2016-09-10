class Santa

attr_reader :ethnicity
attr_accessor :gender, :age, :name 

def initialize(name, gender, ethnicity)
	puts "Initializing Santa instance ..."
	@gender = gender
	@ethnicity = ethnicity
	@age = 0
	@name = name 
end

def speak
	puts "Ho, ho, ho! Haaaappy holidays!"
end

def eat_milk_and_cookies(cookies)
	puts "That was a good #{cookies}!"
end  

def celebrate_birthday
	@age +=1 
end

def get_mad_at(reindeer_name)
	reindeer_name = reindeer_ranking("reindeer_name")
	reindeer_name = reindeer_ranking[-1]
end 

end
# def get_mad_at(reindeer)
  #  @reindeer_ranking.delete(reindeer)
  #  @reindeer_ranking << reindeer
 # end

#getter methods for attribute : making private data publicly available outside the class
#def gender 
#	@gender 
#end

#def ethnicity
#	@ethnicity
#end

#setter method 
#def gender=(new_gender)
#	@gender=new_gender
#end

end

#release 0
#santa_1 = Santa.new

#santa_1.eat_milk_and_cookies("cake")
#santa_1.speak

#release 1
#user data

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

	#other solution
		#santas = []
	#example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
	#example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
	#example_genders.length.times do |i|
	 # santas << Santa.new(example_genders[i], example_ethnicities[i])
	#end

#release 2

#santa_1 = Santa.new("male", "black")
#puts "santa_1 is a #{santa_1.ethnicity}#{santa_1.gender}"

#release 3
#changes done in the class

#release 4
# user data

santas = []
reindeer_ranking=["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(reindeer_ranking.sample, example_genders.sample, example_ethnicities.sample)
      santas[i - 1].age = rand(140)
    

 puts "Name: #{santas[i - 1].name}"
  puts "Ethnicity: #{santas[i - 1].ethnicity}"
  puts "Gender: #{santas[i - 1].gender}"
  puts "Age: #{santas[i - 1].age}"
  end