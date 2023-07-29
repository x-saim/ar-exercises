require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts 'Exercise 7'
puts '----------'

# Your code goes here ...
# Assuming you already have the Store model defined with the validations

# Ask the user for a store name and store it in a variable
print 'Enter the store name: '
store_name = gets.chomp

# Attempt to create a store with the inputted name but leave out the other fields
store = Store.new(name: store_name)

# Try to save/create the record
if store.save
  puts 'Store was successfully created.'
else
  # Display the error messages
  puts 'Failed to create the store:'
  store.errors.full_messages.each do |message|
    puts message
  end
end
