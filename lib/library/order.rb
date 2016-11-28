require_relative 'book'
require_relative 'reader'

class Order
  include DataManager
  attr_accessor :book, :reader
  attr_reader :date

  def initialize(book, reader)
    @book   = book
    @reader = reader
    @date   = Time.new
  end

  def to_s
    "#{@book.title}; #{@reader.name}; #{@date.asctime}"
  end
end
