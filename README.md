#Library (OOP in Ruby)

    Book: title, author
    Order: book, reader, date
    Reader: name, email, city, street, house
    Author: name, biography
    Library: books, orders, readers, authors

#This program determines:
    
    library = Library.new

    ##Who often takes the book?
    library.often_reader

    ##What is the most popular book?
    library.most_popular_book

    ##How many people ordered one of the three most popular books?
    library.uniq_readers_most3_books
    
#Functionality
    ##Save all Library data to file(s):
      For each new objec use #save_to_file, for example: 
        Order.new(book,reader).save_to_file 
      or if you need this automatically: 
        add save_to_file in the end #initialize for each class what you need to save
    
    ##Get all Library's data from files:
      library.library_from_file
      Only read from file:
        library.read_from_file('file_name')

    ##For deleting file use #delete_file(file_name)




