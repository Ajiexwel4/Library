require_relative 'author'

module Library  
  class Book
    include OperationsWithFiles

    attr_accessor :title, :author

    def initialize(title, author)
      @title  = title
      @author = author      
      # save_to_file # uncomment if you need to save data to file on default
    end

    def to_s
      "BOOK: \"#{@title}\"; #{@author.name}"
    end
  end
end
