require_relative 'author'

module Library
  class Book
    attr_accessor :title, :author
    
    def initialize(title, author)
      @title  = title
      @author ||= Library::Author.new(author)
    end
    
    def to_s
      "Book: \"#{@title}\" Author: #{@author.name}"
    end
  end
end

