# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create a new hash
  # set default quantity : 1
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] : hash



# Method to add an item to a list
# input: item name and optional quantity
# steps: add item and quatity to the hash 
# output: the list of groceries

# Method to remove an item from the list
# input: IF going to delete something from the list, you put the key or item name
# steps: use built-in method to remove item from the list
# output: updated list

# Method to update the quantity of an item
# input: IF going to add quantity we will update the hash value
# steps: we use the bracket notation to update value
# output: updated list

# Method to print a list and make it look pretty
# input: the list we are using
# steps: use iteration to make it look pretty
# output: final updated list
  
def new_grocery_list(items)
    list = {}
    array_of_items = items.split(" ")
    array_of_items.each do |item|
        list[item] = 1
end
list 
end

def add_item(list, item_name, quanity = 1)
    list[item_name] = quanity
end

def remove_item(list,item_name)
list.delete[item_name] 
end

def update_quanity(list, item_name, quanity)
    list[item_name] = quanity 
end

def print_pretty(list)
    puts "Grocery List"
    list.each do |item,quantity| 
        puts "I need #{quantity} of #{item}"
    end
end

jules_gorcery_list = new_grocery_list("Lemonade Tomatoes Onions Ice_Cream")
update_quanity(jules_gorcery_list, "Lemonade", 2)
update_quanity(jules_gorcery_list, "Tomatoes", 3)
update_quanity(jules_gorcery_list, "Ice_Cream", 4)
