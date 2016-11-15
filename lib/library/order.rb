require_relative 'book'
require_relative 'reader'

module Library  
  class Order
    include OperationsWithFiles

    attr_accessor :book, :reader
    attr_reader :date

    def initialize(book, reader)
      @book   = book
      @reader = reader
      @date   = Time.new
      @reader.books_taken += 1      
      # save_to_file # uncomment if you need to save data to file on default
    end

    def to_s
      "ORDER: The \"#{@book.title}\" book ordered by #{@reader.name}; " \
        "date of the order: #{@date.asctime}"
    end
  end
end
