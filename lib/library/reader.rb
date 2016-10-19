module Library  
  class Reader
    attr_accessor :name, :email, :city, :street, :house, :books_taken
    
    def initialize(name, info = {})
      @name   = name
      @email  = info[:email]
      @city   = info[:city]
      @street = info[:street]
      @house  = info[:house]

      @books_taken = 0
    end  

    def to_s
      "[Reader:] name: #{@name}, email: #{@email}, " +
      "city: #{@city}, street: #{@street}, house: #{@house}."     
    end
      
  end
end


