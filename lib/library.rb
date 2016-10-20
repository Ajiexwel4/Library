require_relative 'library/order'
require_relative 'library/operations/operations'

module Library
  class Main
    include Operations
    include OperationsWithFiles

    attr_accessor :authors, :books, :orders, :readers
   
    def initialize
      @authors = []
      @books   = []
      @orders  = []
      @readers = []
    end

    def often_reader
      reader = @readers.sort_by {|reader| reader.books_taken}.last 
      puts "Who often takes the book?\n#{reader} "   
    end

    def most_popular_book
      most = rate_ordered_books.first.shift
      puts "What is the most popular book?\n#{most}"
    end

    def count_reader_most3_books
      most3_books  = rate_ordered_books.take(3)
      count_reader = most3_books.inject(0) {|sum, array| sum+= array[1]}
      puts "How many people ordered one of the three most popular books?\n#{count_reader} people"
    end

    private 

    def rate_ordered_books
      books_count  = @orders.inject(Hash.new(0)) {|hash, order| hash[order.book] += 1; hash }
      books_sorted = books_count.sort_by         {|book, count| count                       }.reverse
    end      
  end
end
 

  

