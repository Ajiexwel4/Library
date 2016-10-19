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
  end
end