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

    define_method "#{name}_from_file" do
      File.open("library/files/#{name}.txt") do |file|
        temp = file.map { |line| line.chomp.split('; ') }
        if @authors.empty?
          temp.each { |args| @authors << Author.new(args[0], args[1]) }
        elsif @books.empty?
          temp.each_with_index { |args, index| @books << Book.new(args[0], @authors[index]) }
        elsif @readers.empty?
          temp.each do |args|
            info = { email: args[1], city: args[2], street: args[3], house: args[4] }
            @readers << Reader.new(args[0], info)
          end
        else
          temp.map do |order|
            book_index   = @books.find_index { |book| book.title == order[0] }
            reader_index = @readers.find_index { |reader| reader.name == order[1] }
            order_obj = Order.new(@books[book_index], @readers[reader_index])
            order_obj.instance_variable_set(:@date, Time.parse(order[2]))
            @orders << order_obj
          end
        end
      end
    end
  end
end
