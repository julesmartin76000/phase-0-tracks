# Release 0

def search_array(array, integer)
	index = 0

	while index < array.length
		if array[index] == integer
			integer_index = index
		else
			array == nil
		end
		index += 1
	end
	p integer_index
end

array = [42, 89, 23, 1]
search_array(array, 1)

# Release 1 

def fib(integer)
	fib_begin = [0,1]

if integer == 0 
	p []
elsif integer == 1 
	p [0]
else 
	until fib_begin.length == integer 
	new_integer = fib_begin[-1] + fib_begin[-2]
	fib_begin << new_integer
	end 
end
p fib_begin
end

fib(7)


# Release 2

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end
