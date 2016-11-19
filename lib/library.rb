require_relative 'library/order'

class Library
  include DataManager

  attr_accessor :authors, :books, :orders, :readers

  def initialize
    @authors = []
    @books   = []
    @orders  = []
    @readers = []
  end

  def often_reader
    puts 'Who often takes the book?'
    puts @orders.group_by(&:reader).sort_by { |_reader, books| books.count }.last[0]
  end

  def most_popular_book
    puts 'What is the most popular book?'
    puts rate_ordered_books.last[0]
  end

  def uniq_readers_most3_books
    puts 'How many people ordered one of the three most popular books?'
    all_orders_most3_books = rate_ordered_books.last(3).map { |book| book[1] }.flatten
    puts all_orders_most3_books.map(&:reader).uniq.size
  end

  private

  def rate_ordered_books
    @orders.group_by(&:book).sort_by { |_book, readers| readers.count }
  end
end
