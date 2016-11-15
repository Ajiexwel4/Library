require_relative 'library'

# Authors
hal_fulton = Library::Author.new(
  'Hal Fulton',
  'First programmed with Ruby in 1999'
) # .save_to_file
sam_ruby = Library::Author.new(
  'Sam Ruby',
  'Prominent software developer'
) # .save_to_file
roman_snitko = Library::Author.new(
  'Roman Snitko',
  'Programmer: Ruby, Dart, Javascript, Bitcoin'
) # .save_to_file
alex_kruglov = Library::Author.new(
  'Alexander Kruglov',
  'Rubyist'
) # .save_to_file
lucas_carlson = Library::Author.new(
  'Lucas Carlson',
  'Rubyist'
) # .save_to_file

# Books
book_fulton  = Library::Book.new('The Ruby Way', hal_fulton) # .save_to_file
book_ruby    = Library::Book.new('Agile development RAILS4',
                                 sam_ruby) # .save_to_file
book_snitko  = Library::Book.new('True Development on Ruby on Rails',
                                 roman_snitko) # .save_to_file
book_kruglov = Library::Book.new('Ruby', alex_kruglov) # .save_to_file
book_carlson = Library::Book.new('Ruby Cookbook', lucas_carlson) # .save_to_file

# Readers
reader_first  = Library::Reader.new('Alexander Beldiyan',
                                    email:  'malolam1@meta.ua',
                                    city:   'Zhovty Vody',
                                    street: 'Shevchenko',
                                    house:  16) # .save_to_file
reader_second = Library::Reader.new('Natalia',
                                    email:  'natasha1111@meta.ua',
                                    city:   'Zhovty Vody',
                                    street: 'Shevchenko',
                                    house:  11) # .save_to_file
reader_third  = Library::Reader.new('Vladimir',
                                    email:  'vlad1ddd@meta.ua',
                                    city:   'Zhovty Vody',
                                    street: 'Gagarina',
                                    house:  21) # .save_to_file
reader_fourth = Library::Reader.new('Vasiliy',
                                    email:  'vasvas123@meta.ua',
                                    city:   'Zhovty Vody',
                                    street: 'Gagarina',
                                    house:  5) # .save_to_file

# Orders
order_first = Library::Order.new(book_fulton, reader_first) # .save_to_file
order_first2 = Library::Order.new(book_ruby, reader_first) # .save_to_file
order_second = Library::Order.new(book_ruby, reader_second) # .save_to_file
order_third = Library::Order.new(book_snitko, reader_third) # .save_to_file
order_fourth = Library::Order.new(book_carlson, reader_fourth) # .save_to_file
order_fourth2 = Library::Order.new(book_ruby, reader_fourth) # .save_to_file
order_fourth3 = Library::Order.new(book_fulton, reader_fourth) # .save_to_file
order_first3 = Library::Order.new(book_ruby, reader_first) # .save_to_file

# Library
library = Library::Main.new

# Add to collection manually
library.add_books(book_fulton)
library.add_books(book_ruby)
library.add_books(book_snitko)
library.add_books(book_kruglov)
library.add_books(book_carlson)
library.remove_books(book_ruby) # delete from collection
library.add_books(book_ruby)
library.add_authors(hal_fulton)
library.add_authors(sam_ruby)
library.add_authors(roman_snitko)
library.add_authors(alex_kruglov)
library.add_authors(lucas_carlson)
library.add_orders(order_first)
library.add_orders(order_first2)
library.add_orders(order_first3)

library.add_orders(order_second)
library.add_orders(order_third)
library.add_orders(order_fourth)
library.add_orders(order_fourth2)
library.add_orders(order_fourth3)
library.add_readers(reader_first)
library.add_readers(reader_second)
library.add_readers(reader_third)
library.add_readers(reader_fourth)

# task1
library.often_reader
# task2
library.most_popular_book
# task3
library.count_readers_most3_books

## task4
## For each new objec use #save_to_file
## for example Library::Order.new(book_fulton,  reader_fourth).save_to_file

## task5
## Add to collection from files
# library.authors_from_file("authors")
# library.books_from_file("books")
# library.orders_from_file("orders")
# library.readers_from_file("books")
## Only read from file
library.read_from_file('authors')

## Delete files
# library = Library::Main.new
# library.delete_files
