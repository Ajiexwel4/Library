require_relative 'operations/operations_with_files'

module Library
  # create authors
  class Author
    include OperationsWithFiles

    attr_accessor :name, :biography

    def initialize(name, biography = '')
      @name      = name
      @biography = biography
      # uncomment if need save to file on default after creating object
      # save_to_file
    end

    def to_s
      "AUTHOR: #{@name}(#{@biography})"
    end
  end
end
