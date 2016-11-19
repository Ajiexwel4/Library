require_relative 'modules/data_manager'

class Reader
  include DataManager
  attr_accessor :name, :email, :city, :street, :house

  def initialize(name, info = {})
    @name   = name
    @email  = info[:email]
    @city   = info[:city]
    @street = info[:street]
    @house  = info[:house]
  end

  def to_s
    "#{@name}; #{@email}; #{@city}; #{@street}; #{@house}"
  end
end
