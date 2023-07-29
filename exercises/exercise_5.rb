require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts 'Exercise 5'
puts '----------'

# Your code goes here ...

@total_revenue = Store.sum(:annual_revenue)
puts "The total revenue for all stores combined is $#{@total_revenue}."
puts "The average revenue for all stores combined is $#{@total_revenue / Store.count}."

@store_million = Store.where('annual_revenue > ?',
                             1_000_000).count
puts "The number of stores that are generating $1M or more in annual sales is #{@store_million}."
