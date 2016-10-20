require_relative 'library/order'
require_relative 'library/operations/operations'

module Library
  # create library
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
      reader = @readers.sort_by(&:books_taken).last
      puts "Who often takes the book?\n#{reader} "
    end

    def most_popular_book
      most = rate_ordered_books.first.shift
      puts "What is the most popular book?\n#{most}"
    end

    def count_reader_most3_books
      most3_books  = rate_ordered_books.take(3)
      count_reader = most3_books.inject(0) { |a, e| a + e[1] }
      puts 'How many people ordered one of the three most popular books?'
      puts "#{count_reader} people"
    end

    private

    def rate_ordered_books
      books_count = @orders.each_with_object(Hash.new(0)) do |order, hash|
        hash[order.book] += 1
        hash
      end
      books_count.sort_by { |_book, count| count }.reverse
    end
  end
end
