module Operations
  collections = [:authors, :books, :orders, :readers]
  collections.each do |name|
    define_method "add_#{name}" do |args|
      send(name) << args      
    end

    define_method "remove_#{name}" do |args|
      send(name).delete(args)
      send(name)
    end

    define_method "#{name}_from_file" do |arg|
      File.open("library/files/Library::#{arg.capitalize}.txt", 'r') do |f|
        f.each { |line| send(name) << line.chomp }
      end
      send(name)
    end
  end
end
