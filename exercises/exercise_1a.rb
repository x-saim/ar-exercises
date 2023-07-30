require_relative '../setup'
require_relative './exercise_1'


puts 'Exercise 1a'
puts '----------'

@store1 = Store.find(1)
# Create a new employee for @store1
employee = @store1.employees.create(first_name: 'Danielle', last_name: 'Brock', hourly_rate: 63)

# Print the password value
puts "Password: #{employee.password}"