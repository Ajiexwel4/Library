require_relative 'file_loader'

module DataManager
  include FileLoader

  def save_to_file
    File.open("library/files/#{self.class.to_s.downcase}s.txt", 'a') { |file| file.puts self }
  end

  def read_from_file(file_name)
    File.open("library/files/#{file_name}.txt") do |file|
      puts file.map(&:chomp)
    end
  end

  def delete_file(file_name)
    File.delete("library/files/#{file_name}.txt")
  end

  def library_from_files
    authors_from_file
    books_from_file
    readers_from_file
    orders_from_file
  end
end
