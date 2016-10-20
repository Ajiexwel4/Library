require_relative 'author'

module Library
  class Book
    include OperationsWithFiles
    
    attr_accessor :title, :author
    
    def initialize(title, author)
      @title  = title
      @author = author
      # uncomment code below if need save to file on default after creating object
      # save_to_file
    end
    
    def to_s
      "BOOK: \"#{@title}\"; #{@author.name}"
    end
  end
end
