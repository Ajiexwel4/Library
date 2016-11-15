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
      puts "Who often takes the book?"
      puts @readers.sort_by(&:books_taken).last
    end

    def most_popular_book
      puts "What is the most popular book?"
      puts rate_ordered_books.first.shift      
    end

    def count_readers_most3_books
      puts 'How many people ordered one of the three most popular books?'
      puts rate_ordered_books.take(3).inject(0) { |acc, book| acc + book[1] }.to_s + " people"      
    end

    private

    def rate_ordered_books      
      books_count = @orders.uniq(&:to_s).each_with_object(Hash.new(0)) { |order, hash| hash[order.book] += 1 }      
      books_count.sort_by { |_book, count| count }.reverse
    end
  end
end
