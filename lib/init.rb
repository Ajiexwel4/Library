require_relative 'library'

hal_fulton    = Author.new('Hal Fulton', 'first programmed with Ruby in 1999')
sam_ruby      = Author.new('Sam Ruby', 'prominent software developer')
roman_snitko  = Author.new('Roman Snitko', 'programmer: Ruby, Dart, Javascript, Bitcoin')
alex_kruglov  = Author.new('Alexander Kruglov', 'rubyist')
lucas_carlson = Author.new('Lucas Carlson', 'rubyist')

book_fulton   = Book.new('The Ruby Way', hal_fulton)
book_ruby     = Book.new('Agile development RAILS4', sam_ruby)
book_snitko   = Book.new('True Development on Ruby on Rails', roman_snitko)
book_kruglov  = Book.new('Ruby', alex_kruglov)
book_carlson  = Book.new('Ruby Cookbook', lucas_carlson)

reader_first  = Reader.new('Alexander', email:  'ajiex@meta.ua',
                                        city:   'Zhovty Vody',
                                        street: 'Shevchenko',
                                        house:  16)
reader_second = Reader.new('Natalia',   email:  'natasha1111@meta.ua',
                                        city:   'Zhovty Vody',
                                        street: 'Shevchenko',
                                        house:  11)
reader_third  = Reader.new('Vladimir',  email:  'vlad1ddd@meta.ua',
                                        city:   'Zhovty Vody',
                                        street: 'Gagarina',
                                        house:  21)
reader_fourth = Reader.new('Vasiliy',   email:  'vasvas123@meta.ua',
                                        city:   'Zhovty Vody',
                                        street: 'Gagarina',
                                        house:  5)

order_first   = Order.new(book_fulton, reader_first)
order_first2  = Order.new(book_ruby, reader_first)
order_second  = Order.new(book_ruby, reader_second)
order_third   = Order.new(book_snitko, reader_third)
order_fourth  = Order.new(book_carlson, reader_fourth)
order_fourth2 = Order.new(book_ruby, reader_fourth)
order_fourth3 = Order.new(book_fulton, reader_fourth)
order_first3  = Order.new(book_ruby, reader_first)

library = Library.new
library.add_books(book_fulton)
library.add_books(book_ruby)
library.add_books(book_snitko)
library.add_books(book_kruglov)
library.add_books(book_carlson)

library.remove_books(book_ruby)
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

library.often_reader
library.most_popular_book
library.uniq_readers_most3_books
