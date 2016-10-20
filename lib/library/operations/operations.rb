module Operations
  collections = [:authors, :books, :orders, :readers]
  collections.each do |name|
    define_method "add_#{name}" do |args| 
      self.send(name) << args 
    end

    define_method "remove_#{name}" do |args|
      self.send(name).delete(args)
      self.send(name)
    end

    define_method "#{name}_from_file" do |collection|
      File.open("library/files/Library::#{collection.capitalize}.txt", 'r') do |f|
        f.each {|line| self.send(name) << line.chomp}
      end
      self.send(name) 
    end
  end
end