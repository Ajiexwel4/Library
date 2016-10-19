require_relative 'order'
require_relative 'operations'

module Library
  class Main
    include Operations

    attr_accessor :authors, :books, :orders, :readers
   
    def initialize
      @authors = []
      @books   = []
      @orders  = []
      @readers = []
    end
          
  end
end
 
 

  

