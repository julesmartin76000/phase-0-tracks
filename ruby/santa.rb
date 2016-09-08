class Santa

attr_reader :ethnicity,
attr_accessor :gender,

def initialize(gender, ethnicity)
	puts "Initializing Santa instance ..."
	@gender = gender
	@ethnicity = ethnicity
end

def speak
	puts "Ho, ho, ho! Haaaappy holidays!"
end

def eat_milk_and_cookies(cookies)
	puts "That was a good #{cookies}!"
end  

def celebrate_birthday(age)
	age +=1 
end

def get_mad_at(reindeer_name)
	reindeer_name = reindeer_ranking("reindeer_name")
	reindeer_name = reindeer_ranking[-1]
end 

#getter methods for attribute
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
reindeer_ranking=["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
age = 0



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