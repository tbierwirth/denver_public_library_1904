class Library
  attr_reader :name, :books

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

end
