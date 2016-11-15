require_relative 'operations/operations_with_files'

module Library  
  class Author
    include OperationsWithFiles

    attr_accessor :name, :biography

    def initialize(name, biography = '')
      @name      = name
      @biography = biography
      
      # save_to_file # uncomment if you need to save data to file on default
    end

    def to_s
      "AUTHOR: #{@name}(#{@biography})"
    end
  end
end
