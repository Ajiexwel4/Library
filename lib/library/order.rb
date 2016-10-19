require_relative 'book'
require_relative 'reader'

module Library
  class Order
    attr_accessor :book, :reader
    attr_reader :date
    
    def initialize(book, reader)
      @book   = book
      @reader = reader
      @date   = Time.new

      @reader.books_taken += 1
    end

    def to_s
      "[Order:] The \"#{@book.title}\" book ordered by #{@reader.name}, " +
      "date of the order: #{@date.asctime}"
    end
 
  end
end


