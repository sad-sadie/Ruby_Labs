require './customer'
require './library'
require 'date'

customer1 = Customer.new(:Surkov, Date.new(2022, 3, 3), Date.new(2022, 6, 3), 'Book-1')
customer2 = Customer.new(:Stepaniuk, Date.new(2022, 4, 16), Date.new(2022, 8, 12), 'Book-2')
customer3 = Customer.new(:Chabaniuk, Date.new(2022, 8, 20), nil, 'Book-3')
customer4 = Customer.new(:Havryliuk, Date.new(2022, 9, 23), Date.new(2022, 9, 27), 'Book-1')
customer5 = Customer.new(:Shevchenko, Date.new(2022, 5, 9), nil, 'Book-4')
customer6 = Customer.new(:Surkov, Date.new(2022, 6, 3), Date.new(2022, 7, 12), 'Book-2')
customer7 = Customer.new(:Stepaniuk, Date.new(2022, 7, 22), Date.new(2022, 8, 22), 'Book-2')
customer8 = Customer.new(:Surkov, Date.new(2022, 9, 3), nil, 'Book-4')

customers = [customer1, customer2, customer3, customer4, customer5, customer6, customer7, customer8]
library = Library.new(customers)

puts "Fastest to find: #{library.fastest_to_find} days"
puts "Number of unsatisfied orders: #{library.get_unsatisfied_orders_count}"
puts "Most active user is #{library.get_most_active_user[0]} with #{library.get_most_active_user[1]} orders"
puts "Most popular book is #{library.get_most_popular_book[0]} with #{library.get_most_popular_book[1]} orders"
puts "#{library.get_customers_of_popular_books_count} people ordered one out of three most popular books"
