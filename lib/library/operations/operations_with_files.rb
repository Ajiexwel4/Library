module OperationsWithFiles
  def save_to_file
    File.open("library/files/#{self.class}s.txt", 'a') { |file| file.puts self }
  end

  def read_from_file(collection)    
    File.open("library/files/Library::#{collection.capitalize}.txt") do |file|
      puts file.map(&:chomp)
    end
  end

  def delete_files
    [:authors, :books, :orders, :readers].each do |collection|
      File.delete("library/files/Library::#{collection.capitalize}.txt")
    end
  end
end
