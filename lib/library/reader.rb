require_relative 'operations/operations_with_files'

module Library
  # create readers
  class Reader
    include OperationsWithFiles

    attr_accessor :name, :email, :city, :street, :house, :books_taken

    def initialize(name, info = {})
      @name   = name
      @email  = info[:email]
      @city   = info[:city]
      @street = info[:street]
      @house  = info[:house]

      @books_taken = 0
      # uncomment if need save to file on default after creating object
      # save_to_file
    end

    def to_s
      "READER: #{@name}; email: #{@email}; " \
        "city: #{@city}; street: #{@street}; house: #{@house}"
    end
  end
end
