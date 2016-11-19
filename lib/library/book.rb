require_relative 'author'

class Book
  include DataManager
  attr_accessor :title, :author

  def initialize(title, author)
    @title  = title
    @author = author.name
  end

  def to_s
    "#{@title}; #{@author}"
  end
end
