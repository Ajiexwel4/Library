# save data to files, read from files, delete files
module OperationsWithFiles
  def save_to_file
    File.open("library/files/#{self.class}s.txt", 'a') { |f| f.puts self }
  end

  def read_from_file(collection)
    lines = []
    File.open("library/files/Library::#{collection.capitalize}.txt", 'r') do |f|
      f.each { |line| lines << line.chomp }
    end
    puts lines
  end

  def delete_files
    collections = [:authors, :books, :orders, :readers]
    collections.each do |collection|
      File.delete("library/files/Library::#{collection.capitalize}.txt")
    end
  end
end
