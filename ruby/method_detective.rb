# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
def investigation(str)
  index = 0
  
  investigation_str = ""
 
  while index < str.length
    if index.odd?
      investigation_str += str[index].upcase
    else
      investigation_str += str[index].downcase
    end
    index += 1
  end
  investigation_str
end


name = "iNvEsTiGaTiOn"

puts investigation(name)
# => “InVeStIgAtIoN”
# voir si c'est possible avec gsub

"zom".gsub(/[o]/, 'o' => 'oo')  
# => “zoom”
  
"enhance".center(20, '    ')
=> "    enhance    "

 "Stop! You’re under arrest!".upcase
 => "STOP! YOU’RE UNDER ARREST!"

 "the usual".replace "the usual suspects"
 or 
 "the usual" << " suspects"
#=> "the usual suspects"
#essayer de trouver une autre méthode quand même

" suspects".insert(0, 'the usual')
# => "the usual suspects"


"The case of the disappearing last letter".chomp("r")
=> "The case of the disappearing last lette"
#also work with .chop

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"
revoir comment marche .delete

# "Elementary,    my   dear        Watson!". avec Center ??
# => "Elementary, my dear Watson!"

 "z".ord
 => 122 
# (What is the significance of the number 122 in relation to the character z?)

# "How many times does the letter 'a' appear in this string?".<???>
# => 4