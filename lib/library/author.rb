require_relative 'modules/data_manager'

class Author
  include DataManager
  attr_accessor :name, :biography

  def initialize(name, biography = '')
    @name      = name
    @biography = biography
  end

  def to_s
    "#{@name}; #{@biography}"
  end
end
