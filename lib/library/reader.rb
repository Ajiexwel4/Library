require_relative 'operations/operations_with_files'

module Library  
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
      # save_to_file # uncomment if you need to save data to file on default
    end

    def to_s
      "READER: #{@name}; email: #{@email}; " \
        "city: #{@city}; street: #{@street}; house: #{@house}"
    end
  end
end
