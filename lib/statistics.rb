require_relative 'library/library'

author_hell_fulton = Library::Author.new('Hell Fulton', 'rubyist') 
 book_hell_fulton   = Library::Book  .new('Ruby Way', author_hell_fulton)
 book_sam_ruby      = Library::Book  .new('Agile development on ROR', 'Sam Ruby')
 reader_first       = Library::Reader.new(
                                'Alexander Beldiyan', 
                        email:  'malolam1@meta.ua',
                        city:   'Zhovty Vody',
                        street: 'Shevchenko',
                        house:  16
                        )
 reader_second      = Library::Reader.new("Natalia")
 order_for_first    = Library::Order .new(book_hell_fulton, reader_first)
 order_for_first2   = Library::Order .new(book_sam_ruby, reader_first)
 order_for_second   = Library::Order .new(book_sam_ruby, reader_second)
 reader_first.books_taken
 
 library            = Library::Main  .new

 p library.add_books(book_sam_ruby)
 p library.add_books(book_hell_fulton)
 p library.add_authors(author_hell_fulton)
 p library.remove_books(book_sam_ruby)