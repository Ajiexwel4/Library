require_relative 'operations/operations_with_files'

module Library
  class Author
    include OperationsWithFiles
    
    attr_accessor :name, :biography

    def initialize(name, biography = '')
      @name      = name
      @biography = biography    
      # uncomment code below if need save to file on default after creating object
      # save_to_file 
    end

    def to_s
      "AUTHOR: #{@name}(#{@biography})"
    end

  end
end



 


