require 'time'

module FileLoader
  COLLECTIONS = [:authors, :books, :readers, :orders].freeze
 
  COLLECTIONS.each do |name|
    define_method "add_#{name}" do |args|
      send(name) << args
    end

    define_method "remove_#{name}" do |args|
      send(name).delete(args)
    end
    
    private    
    define_method "load_#{name}" do
      File.open("library/files/#{name}.txt") do |file|
        file.map { |line| line.chomp.split('; ') }
      end
    end
  end
  
  def authors_from_file
    load_authors.each { |author| @authors << Author.new(author[0], author[1]) }
  end
  
  def books_from_file
    load_books.each_with_index { |book, index| @books << Book.new(book[0], @authors[index]) }
  end

  def readers_from_file
    load_readers.map do |reader|
      info = { email: reader[1], city: reader[2], street: reader[3], house: reader[4] }
      @readers << Reader.new(reader[0], info)
    end     
  end

  def orders_from_file
    load_orders.map do |order|
      book_index   = @books.find_index { |book| book.title == order[0] }
      reader_index = @readers.find_index { |reader| reader.name == order[1] }
      order_obj = Order.new(@books[book_index], @readers[reader_index])
      order_obj.instance_variable_set(:@date, Time.parse(order[2]))
      @orders << order_obj
    end      
  end  
end
